import numpy as np
from gurobipy import Model, GRB, QuadExpr
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
def create_indicator_constraints(model, polygon, i, points):
  
  sinatx, cosatx, sinaty, cosaty = f'sinatx_{i}', f'cosatx_{i}', f'sinaty_{i}', f'cosaty_{i}'

  tx     = model.addVar(name=f'tx_{i}',    vtype=GRB.CONTINUOUS, lb=-1000, ub=1000)
  ty     = model.addVar(name=f'ty_{i}',    vtype=GRB.CONTINUOUS, lb=-1000, ub=1000)
  sina   = model.addVar(name=f'sina_{i}',  vtype=GRB.CONTINUOUS, lb=0,     ub=1)
  cosa   = model.addVar(name=f'cosa_{i}',  vtype=GRB.CONTINUOUS, lb=0,     ub=1)

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
  points_in_poly = [f'point_{j}_in_poly_{i}' for j in range(len(points))]

  for j, point in enumerate(points):
    px, py = point
    points_in_poly[j] = model.addVar(name=points_in_poly[j], vtype=GRB.BINARY)

    for i in range(len(vertices) - 1):
      ax, ay = vertices[i]
      bx, by = vertices[i+1]
      nx = ay - by
      ny = bx - ax
      model.addConstr(BIG_NUMBER <= \
           (nx * (ay - py) - ny * (ax - px)) * sina \
          +(nx * (ax - px) + ny * (ay - py)) * cosa \
          - ny * sinatx
          + nx * cosatx
          + nx * sinaty
          + ny * cosaty
          + BIG_NUMBER * points_in_poly[j]
      )

  return tx, ty, sina, cosa, points_in_poly

def create_ilp_solver(polygons, points):
  model = Model("polygons_placement")

  txs, tys, sinas, cosas, points_in_polys = [], [], [], [], []
  for i, polygon in enumerate(polygons):
    tx, ty, sina, cosa, points_in_poly = create_indicator_constraints(model, polygon, i, points)
    txs.append(tx)
    tys.append(ty)
    sinas.append(sina)
    cosas.append(cosa)
    points_in_polys.append(points_in_poly)

  indicators = [p for pp in points_in_polys for p in pp]
  model.setObjective(sum(ind for ind in indicators), GRB.MAXIMIZE)
  
  model.optimize()

  txs_values = [model.getVarByName(tx).X for tx in txs]
  tys_values = [model.getVarByName(ty).X for ty in tys]
  sina_values = [model.getVarByName(sina).X for sina in sinas]
  cosa_values = [model.getVarByName(cosa).X for cosa in cosas]
    
  return txs_values, tys_values, sina_values, cosa_values, indicators

# Load and normalize polygons
polygon1 = load_polygon("../data/minipoly/1.txt")
#polygon1 = load_polygon("../data/track1/train/1/387.txt")
#polygon2 = load_polygon("../data/track1/train/1/480.txt")
#polygon3 = load_polygon("../data/track1/train/1/482.txt")
polygons = [polygon1] #, polygon2, polygon3]
# polygons = normalize(polygons)

# Define the target point
target_point = (20, 10)

# Solve the ILP problem
txs_values, tys_values, sina_values, cosa_values, indicators = create_ilp_solver(polygons, [target_point])

# Print the results
print("Translation X values:", txs_values)
print("Translation Y values:", tys_values)
print("SinA values:", sina_values)
print("CosA values:", cosa_values)
print("In polygon values:", indicators)

# Plot the translated polygons
translated_polygons = [translate(polygons[i], xoff=txs_values[i], yoff=tys_values[i]) for i in range(len(polygons))]
rotated_polygons = [rotate(translated_polygons[i], angle=np.arcsin(sina_values[i])) for i in range(len(polygons))]

fig, ax = plt.subplots()
gdf = gpd.GeoDataFrame(geometry=rotated_polygons)
gdf.plot(ax=ax, cmap='tab10', edgecolor='black')
plt.scatter(*target_point, color='red')  # Plot the target point
plt.show()
