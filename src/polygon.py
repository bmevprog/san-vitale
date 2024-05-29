

# TODO
# self.fits = {}

import math
from shapely.geometry import Polygon as ShapelyPolygon

class Polygon:

  def __init__(self):
    self.n=0
    self.points=[]
    self.vectors=[]
    self.lenghts=[]
    self.filepath=""

  def __init__(self, points):
    self.points = points
    self.n = len(self.points)
    self.filepath = ""

    self.vectors = []
    self.lenghts = []
    for i in range(self.n):
      x1, y1 = self.points[i % self.n]
      x2, y2 = self.points[(i+1) % self.n]
      vx, vy =  x2-x1, y2-y1
      len = math.sqrt(vx**2 + vy**2)
      self.vectors.append((vx, vy))
      self.lengths.append(len)

  def load(dataset_path, file, scale):
    with open(filepath) as f:
      lines = f.readlines()
      for line in lines:
        x, y = map(int, line.split("\t"))
        x, y = int(x*scale), int(y*scale)
        poly.points.append((x, y))
    poly = Polygon(points)
    poly.filepath = Path(dataset_path) / (file + ".txt")
    return poly

  def getCenter(self):
    cx = 0
    cy = 0
    for i in range(self.n):
      cx += poly.pts[i][0]
      cy += poly.pts[i][1]
    return [cx/cnt, cy/cnt] # TODO: Is it a problem that this can be float? (We rounded when scaling.)

  def move(self, x, y):
    for i in range(self.n):
      self.points[i][0] += x
      self.points[i][1] += y

  def rotate(self, angle, origin=None):
    if origin is None:
      origin = getCenter(self)
    ox, oy = origin
    self.move(-ox, -oy)
    for i in range(self.n):
      x, y = self.points[i]
      self.points[i][0] = x*math.cos(angle) - y*math.sin(angle)
      self.points[i][1] = x*math.sin(angle) + y*math.cos(angle)
    self.move(ox, oy)

  def getIntersection(self, other):
    p1 = ShapelyPolygon(self.points)
    p2 = ShapelyPolygon(other.points)
    return p1.intersects(p2)

  def countIntersections(polys):
    result = 0
    for i in range(len(polys)):
      for j in range(i+1, len(polys)):
        if getIntersection(polys[i], polys[j]):
          result += 1
    return result
