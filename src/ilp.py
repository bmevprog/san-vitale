import numpy as np
import cplex
from shapely.geometry import Polygon, Point
from shapely.affinity import translate, rotate, scale
import matplotlib.pyplot as plt
import geopandas as gpd


def load_polygon(filepath) -> Polygon:
  print(f"Loading polygon: ${filepath}")
  points = []
  with open(filepath) as f:
    lines = f.readlines()
    for line in lines:
      x, y = map(int, line.split("\t"))
      points.append((x, y))
  return Polygon(points)

def load_all_polygons(dirpath) -> [Polygon]:
  polygons = []
  print("Loading polygons from: ", data_path)
  for file in data_path.glob("*.txt"):
    if "adjacency" != file.stem:
      polygon = loadPolygon(file)
      polygons.append(polygon)
  return polygons


polygon1 = load_polygon("../data/track1/train/1/387.txt")
polygon2 = load_polygon("../data/track1/train/1/480.txt")

scaled_polygon1 = scale(polygon1, xfact=1.2, yfact=1.2)
scaled_polygon2 = scale(polygon2, xfact=1.2, yfact=1.2)

p1 = gpd.GeoSeries(scaled_polygon1)
p2 = gpd.GeoSeries(scaled_polygon2)

fig, ax = plt.subplots()
p1.plot(ax=ax, color='blue', edgecolor='black')
p2.plot(ax=ax, color='red', edgecolor='black')
plt.show()

# Combine polygons into a GeoDataFrame
gdf = gpd.GeoDataFrame(geometry=[scaled_polygon1, scaled_polygon2])

# Plot combined GeoDataFrame
gdf.plot(cmap='tab10', edgecolor='black')
plt.show()