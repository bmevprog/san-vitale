import numpy as np
import cplex
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
def create_indicator_constraints(problem, polygon, i, points):
  
  tx, ty, sina, cosa = f'tx_{i}', f'ty_{i}', f'sina_{i}', f'cosa_{i}'
  sinatx, cosatx, sinaty, cosaty = f'sinatx_{i}', f'cosatx_{i}', f'sinaty_{i}', f'cosaty_{i}'

  problem.variables.add(names=[tx, ty, sina, cosa], types=[problem.variables.type.continuous] * 4)
  problem.variables.add(names=[sinatx, cosatx, sinaty, cosaty], types=[problem.variables.type.continuous] * 4)

  # sina^2 + cosa^2 = 1	
  problem.quadratic_constraints.add(
      quad_expr=cplex.SparseTriple(ind1=[sina, cosa], ind2=[sina, cosa], val=[1, 1]),
      sense='E', rhs=1, name=f'sinacosa_{i}')
  
  # sina * tx = sinatx, cosa * tx = cosatx, sina * ty = sinaty, cosa * ty = cosaty
  eqs = [(sina, tx, sinatx), (cosa, tx, cosatx), (sina, ty, sinaty), (cosa, ty, cosaty)]
  for a, t, at in eqs:
    # a * t = at
    problem.quadratic_constraints.add(
        quad_expr=cplex.SparseTriple(ind1=[a], ind2=[t], val=[1]),
        lin_expr=cplex.SparsePair(ind=[at], val=[-1]),
        sense='E', rhs=0, name=f'{at}')
      

  vertices = list(polygon.exterior.coords)

  points_in_poly = [f'point_{j}_in_poly_{i}' for j in range(len(points))]

  for j, point in enumerate(points):
    px, py = point

    pointj_in_polyi = points_in_poly[j]
    problem.variables.add(names=[pointj_in_polyi], types=[problem.variables.type.binary])

    for i in range(len(vertices) - 1):
      ax, ay = vertices[i]
      bx, by = vertices[i+1]
      nx = ay - by
      ny = bx - ax

      problem.linear_constraints.add(
          lin_expr=[
              cplex.SparsePair(
                  ind=[sina, cosa, sinatx, sinaty, cosatx, cosaty, pointj_in_polyi],
                  val=[(nx*(ay-py)-ny*(ax-px)), (nx*(ax-px)+ny*(ay-py)), -ny, nx, nx, ny, BIG_NUMBER]
              )
          ],
          senses=["G"],
          rhs=[BIG_NUMBER]
      )

  return tx, ty, sina, cosa, points_in_poly

def create_ilp_solver(polygons, points):
    problem = cplex.Cplex()
    problem.set_problem_type(cplex.Cplex.problem_type.MIQCP)
    
    txs, tys, sinas, cosas, points_in_polys = [], [], [], [], []
    for i, polygon in enumerate(polygons):
      tx, ty, sina, cosa, points_in_poly = create_indicator_constraints(problem, polygon, i, points)
      txs.append(tx)
      tys.append(ty)
      sinas.append(sina)
      cosas.append(cosa)
      points_in_polys.append(points_in_poly)

    indicators = [p for pp in points_in_polys for p in pp]
    problem.objective.set_linear([(ind, 1.0) for ind in indicators])
    problem.objective.set_sense(problem.objective.sense.maximize)
    
    problem.write("problem.lp")
    problem.solve()

    solution = problem.solution
    txs_values = solution.get_values(txs)
    tys_values = solution.get_values(tys)
    sina_values = solution.get_values(sinas)
    cosa_values = solution.get_values(cosas)
    
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
