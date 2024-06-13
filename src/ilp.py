import numpy as np
import cplex
from shapely.geometry import Polygon, Point
from shapely.affinity import translate, rotate, scale
from shapely.ops import unary_union
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

def normalize(polygons, target=200):
  polygons = [translate(poly, xoff=-poly.centroid.x, yoff=-poly.centroid.y) for poly in polygons]
  union = unary_union(polygons)
  scale_factor = target / (2*max([abs(bound) for bound in union.bounds]))
  polygons = [scale(poly, xfact=scale_factor, yfact=scale_factor) for poly in polygons]
  polygons = [translate(poly, xoff=-poly.centroid.x, yoff=-poly.centroid.y) for poly in polygons]
  return polygons

polygon1 = load_polygon("../data/track1/train/1/387.txt")
polygon2 = load_polygon("../data/track1/train/1/480.txt")
polygon3 = load_polygon("../data/track1/train/1/482.txt")
polygons = [polygon1, polygon2, polygon3]

polygons = normalize(polygons)

fig, ax = plt.subplots()
gdf = gpd.GeoDataFrame(geometry=polygons)
gdf.plot(ax=ax, cmap='tab10', edgecolor='black')
plt.show()
