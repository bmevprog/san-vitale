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

def create_ilp_solver(polygons, target_point):
    num_polygons = len(polygons)
    point_x, point_y = target_point

    # Initialize the CPLEX problem
    prob = cplex.Cplex()
    prob.set_problem_type(cplex.Cplex.problem_type.MILP)
    
    # Variables translateX and translateY for each polygon
    translateX = [f'translate_x_{i}' for i in range(num_polygons)]
    translateY = [f'translate_y_{i}' for i in range(num_polygons)]
    
    # Binary variables in_polygon_i
    in_polygon = [f'in_polygon_{i}' for i in range(num_polygons)]

    prob.variables.add(names=translateX, types=[prob.variables.type.continuous] * num_polygons)
    prob.variables.add(names=translateY, types=[prob.variables.type.continuous] * num_polygons)
    prob.variables.add(names=in_polygon, types=[prob.variables.type.binary] * num_polygons)

    # Objective: Maximize the sum of in_polygon_i
    prob.objective.set_sense(prob.objective.sense.maximize)
    prob.objective.set_linear([(var, 1.0) for var in in_polygon])

    # Constraints: in_polygon_i is 1 if and only if the point is inside the translated polygon
    for i in range(num_polygons):
        polygon = polygons[i]
        vertices = list(polygon.exterior.coords)
        
        for j in range(len(vertices) - 1):
            x1, y1 = vertices[j]
            x2, y2 = vertices[j+1]
            nx = y1 - y2
            ny = x2 - x1

            max_x, max_y = 1000, 1000
            when_indicator_false = (2*max_x + 2*max_y)**2
            c = nx * (x1 - point_x) + ny * (y1 - point_y) - when_indicator_false

            print(f"Points: ({x1}, {y1}) -> ({x2}, {y2})")
            print(f"Normal: ({nx}, {ny}), c: {c}")
            print(f"Equation: {nx} * x + {ny} * y >= {c}")
            equation_str = f"{nx} * {translateX[i]} + {ny} * {translateY[i]} >= {c - nx * point_x - ny * point_y} (Indicator: {in_polygon[i]})"
            print(f"Adding constraint: {equation_str}")

            prob.linear_constraints.add(
                lin_expr=[
                    cplex.SparsePair(
                        ind=[translateX[i], translateY[i], in_polygon[i]],
                        val=[-nx, -ny, -when_indicator_false]
                    )
                ],
                senses=["G"],
                rhs=[c]
            )

    prob.write("prob.lp")

    # Solve the problem
    prob.solve()

    # Extract solution
    solution = prob.solution
    translateX_values = solution.get_values(translateX)
    translateY_values = solution.get_values(translateY)
    in_polygon_values = solution.get_values(in_polygon)

    return translateX_values, translateY_values, in_polygon_values

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
translateX_values, translateY_values, in_polygon_values = create_ilp_solver(polygons, target_point)

# Print the results
print("Translation X values:", translateX_values)
print("Translation Y values:", translateY_values)
print("In polygon values:", in_polygon_values)

# Plot the translated polygons
translated_polygons = [translate(polygons[i], xoff=translateX_values[i], yoff=translateY_values[i]) for i in range(len(polygons))]

fig, ax = plt.subplots()
gdf = gpd.GeoDataFrame(geometry=translated_polygons)
gdf.plot(ax=ax, cmap='tab10', edgecolor='black')
plt.scatter(*target_point, color='red')  # Plot the target point
plt.show()
