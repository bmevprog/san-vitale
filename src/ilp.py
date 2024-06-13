import numpy as np
import gurobipy as gp
from gurobipy import Model, GRB, QuadExpr, quicksum
from shapely.geometry import Polygon, Point
from shapely.affinity import translate, rotate, scale
from shapely.ops import unary_union
import matplotlib.pyplot as plt
import geopandas as gpd
from pathlib import Path

def load_polygon(filepath) -> Polygon:
    print(f"Loading polygon: {filepath}")
    points = []
    with open(filepath) as f:
        lines = f.readlines()
        for line in lines:
            x, y = map(int, line.split("\t"))
            points.append((x, y))
    return Polygon(points)

def load_all_polygons(dirpath) -> [Polygon]:
    polygons = []
    print("Loading polygons from: ", dirpath)
    for file in Path(dirpath).glob("*.txt"):
        if "adjacency" != file.stem:
            polygon = load_polygon(file)
            polygons.append(polygon)
    return polygons

def normalize(polygons, target=200):
    polygons = [translate(poly, xoff=-poly.centroid.x, yoff=-poly.centroid.y) for poly in polygons]
    union = unary_union(polygons)
    scale_factor = target / (2*max([abs(bound) for bound in union.bounds]))
    polygons = [scale(poly, xfact=scale_factor, yfact=scale_factor) for poly in polygons]
    polygons = [translate(poly, xoff=-poly.centroid.x, yoff=-poly.centroid.y) for poly in polygons]
    return polygons

BIG_NUMBER = 2000000
def create_indicator_constraints(model, polygon, extended_polygon, i, points):

  tx     = model.addVar(name=f'tx_{i}',    vtype=GRB.CONTINUOUS, lb=-100, ub=100)
  ty     = model.addVar(name=f'ty_{i}',    vtype=GRB.CONTINUOUS, lb=-100, ub=100)
  sina   = model.addVar(name=f'sina_{i}',  vtype=GRB.CONTINUOUS, lb=-1,     ub=1)
  cosa   = model.addVar(name=f'cosa_{i}',  vtype=GRB.CONTINUOUS, lb=-1,     ub=1)

  sinatx = model.addVar(name=f'sinatx_{i}', vtype=GRB.CONTINUOUS)
  cosatx = model.addVar(name=f'cosatx_{i}', vtype=GRB.CONTINUOUS)
  sinaty = model.addVar(name=f'sinaty_{i}', vtype=GRB.CONTINUOUS)
  cosaty = model.addVar(name=f'cosaty_{i}', vtype=GRB.CONTINUOUS)

  model.addQConstr(sina * sina + cosa * cosa == 1, name=f'sinacosa_{i}')
  model.addQConstr(sina * tx == sinatx, name=f'sinatx_{i}')
  model.addQConstr(cosa * tx == cosatx, name=f'cosatx_{i}')
  model.addQConstr(sina * ty == sinaty, name=f'sinaty_{i}')
  model.addQConstr(cosa * ty == cosaty, name=f'cosaty_{i}')
  
  vertices = list(polygon.exterior.coords)
  extended_vertices = list(extended_polygon.exterior.coords)

  points_in_poly_i = [f'point_{j}_in_poly_{i}' for j in range(len(points))]
  points_in_extended_poly_i = [f'point_{j}_in_extended_poly_{i}' for j in range(len(points))]

  for j, point in enumerate(points):
    px, py = point
    points_in_poly_i[j] = model.addVar(name=points_in_poly_i[j], vtype=GRB.BINARY)
    points_in_extended_poly_i[j] = model.addVar(name=points_in_extended_poly_i[j], vtype=GRB.BINARY)

    print(f"Creating constraints for point {j} and polygon {i}")
    for k in range(len(vertices) - 1):
      ax, ay = vertices[k]
      bx, by = vertices[k+1]
      nx = ay - by
      ny = bx - ax
      model.addConstr(- BIG_NUMBER <= \
           (nx * (ay - py) - ny * (ax - px)) * sina \
          +(nx * (ax - px) + ny * (ay - py)) * cosa \
          - ny * sinatx
          + nx * cosatx
          + nx * sinaty
          + ny * cosaty
          - BIG_NUMBER * points_in_poly_i[j],
          name = f'point_{j}_in_poly_{i}_constraint_{k}'
      )
    
    for k in range(len(extended_vertices) - 1):
      ax, ay = extended_vertices[k]
      bx, by = extended_vertices[k+1]
      nx = ay - by
      ny = bx - ax
      model.addConstr(- BIG_NUMBER <= \
          (nx * (ay - py) - ny * (ax - px)) * sina \
         +(nx * (ax - px) + ny * (ay - py)) * cosa \
         - ny * sinatx
         + nx * cosatx
         + nx * sinaty
         + ny * cosaty
         - BIG_NUMBER * points_in_extended_poly_i[j],
         name = f'point_{j}_in_extended_poly_{i}_constraint_{k}'
      )

  return tx, ty, sina, cosa, points_in_poly_i, points_in_extended_poly_i

def create_ilp_solver(polygons, extended_polygons, points):
  model = Model("polygons_placement")

  txs, tys, sinas, cosas, points_in_polys, points_in_extended_polys = [], [], [], [], [], []
  for i in range(len(polygons)):
    print(f"Creating indicator constraints for polygon {i}")
    tx, ty, sina, cosa, points_in_poly_i, points_in_extended_poly_i = \
      create_indicator_constraints(model, polygons[i], extended_polygons[i], i, points)
    txs.append(tx)
    tys.append(ty)
    sinas.append(sina)
    cosas.append(cosa)
    points_in_polys.append(points_in_poly_i)
    points_in_extended_polys.append(points_in_extended_poly_i)

  point_bads = []
  for j in range(len(points)):
    print(f"Creating constraints for point {j}")
    point_j_in_polys = model.addVar(name=f'point_{j}_in_polys', vtype=GRB.BINARY)
    point_j_in_extended_polys = model.addVar(name=f'point_{j}_in_extended_polys', vtype=GRB.BINARY)
    point_j_bad = model.addVar(name=f'point_{j}_bad', vtype=GRB.BINARY)
    point_bads.append(point_j_bad)

    model.addConstr(quicksum([points_in_polys[i][j] for i in range(len(polygons))]) == point_j_in_polys)
    # OR(points_in_extended_polys[i][j] for i in range(len(polygons)) == point_j_in_extended_polygons
    for i in range(len(polygons)):
      model.addConstr(points_in_extended_polys[i][j] <= point_j_in_extended_polys)
    model.addConstr(point_j_in_extended_polys <= sum(points_in_extended_polys[i][j] for i in range(len(polygons))))

    model.addConstr(point_j_bad >= point_j_in_extended_polys - point_j_in_polys)
    model.addConstr(point_j_bad <= point_j_in_extended_polys)
    model.addConstr(point_j_bad <= 2 - point_j_in_polys - point_j_in_extended_polys)

  print("Setting objective")
  model.setObjective(quicksum(point_bads), GRB.MINIMIZE)

  print("Writing to file")
  model.write("model.lp")

  print("Start optimization")
  model.optimize()
  print("Done optimization")

  print("----------")
  print("Result: ", model.objVal)
  print()
  for i in range(len(polygons)):
    print(f"Polygon {i}:")
    print(f"Translation: {txs[i].X}, {tys[i].X}")
    print(f"Angle: sina={sinas[i].X}, cosa={cosas[i].X}, a={np.arcsin(sinas[i].X)}={np.arccos(cosas[i].X)}, 1={sinas[i].X**2 + cosas[i].X**2}")

    for j, point in enumerate(points):
      print(f"Point {point} is in polygon {i}:", points_in_polys[i][j].X)
      print(f"Point {point} is in extended polygon {i}:", points_in_extended_polys[i][j].X)
  print()
  for j in range(len(points)):
    print(f"Point {j} is bad:", point_bads[j].X)
  print("----------")

  return \
    [tx.X for tx in txs], \
    [ty.X for ty in tys], \
    [sina.X for sina in sinas], \
    [cosa.X for cosa in cosas]

# Load and normalize polygons
# polygon1 = load_polygon("../data/minipoly/1.txt")
polygon1 = load_polygon("../data/track1/train/1/387.txt")
polygon2 = load_polygon("../data/track1/train/1/480.txt")
polygon3 = load_polygon("../data/track1/train/1/482.txt")
polygons = [polygon1, polygon2, polygon3]
polygons = normalize(polygons)

extended_polygons = [translate(\
  scale(\
    translate(poly, xoff=-poly.centroid.x, yoff=-poly.centroid.y),\
    xfact=1.2, yfact=1.2),\
  xoff=poly.centroid.x, yoff=poly.centroid.y) \
 for poly in polygons]

# Define the target point
points =  [(x, y) for x in range(-100, 101, 10) for y in range(-100, 101, 10)]

# Solve the ILP problem
txs_values, tys_values, sina_values, cosa_values = create_ilp_solver(polygons, extended_polygons, points)

# Plot the translated polygons
translated_polygons = [translate(polygons[i], xoff=txs_values[i], yoff=tys_values[i]) for i in range(len(polygons))]
rotated_polygons = [rotate(translated_polygons[i], angle=np.arcsin(sina_values[i])) for i in range(len(polygons))]

translated_extended_polygons = [translate(extended_polygons[i], xoff=txs_values[i], yoff=tys_values[i]) for i in range(len(extended_polygons))]
rotated_extended_polygons = [rotate(translated_extended_polygons[i], angle=np.arcsin(sina_values[i])) for i in range(len(extended_polygons))]

fig, ax = plt.subplots()
gdf = gpd.GeoDataFrame(geometry=rotated_extended_polygons + rotated_polygons)
gdf.plot(ax=ax, cmap='tab10', edgecolor='black')
for point in points:
    plt.scatter(*point, color='red')  # Plot the points
plt.show()
