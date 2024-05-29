import math
from shapely.geometry import Polygon as ShapelyPolygon

class Polygon:

  def __init__(self):
    self.n=0
    self.points=[]
    self.vectors=[]
    self.lengths=[]
    self.touchings=[]
    self.filepath=""

  def __init__(self, points):
    self.points = points
    self.n = len(self.points)
    self.touchings = []
    self.filepath = ""

    self.vectors = []
    self.lengths = []
    for i in range(self.n):
      x1, y1 = self.points[i % self.n]
      x2, y2 = self.points[(i+1) % self.n]
      vx, vy =  x2-x1, y2-y1
      length = math.sqrt(vx**2 + vy**2)
      self.vectors.append([vx, vy])
      self.lengths.append(length)

  def load(filepath, scale):
    points = []
    with open(filepath) as f:
      lines = f.readlines()
      for line in lines:
        x, y = map(int, line.split("\t"))
        x, y = int(x*scale), int(y*scale)
        points.append([x, y])
    poly = Polygon(points)
    poly.filepath = filepath
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

  def isIntersecting(self, other):
    p1 = ShapelyPolygon(self.points)
    p2 = ShapelyPolygon(other.points)
    return p1.intersects(p2)

  def countIntersections(polys):
    result = 0
    for i in range(len(polys)):
      for j in range(i+1, len(polys)):
        if polys[i].isIntersecting(polys[j]):
          result += 1
    return result

  def normAverageAround(self, i, stepsize = 1):
    avgx, avgy = 0, 0
    norms = [(-y, x) for x, y in self.points]
    for t in range(stepsize):
      avgx += norms[(i+t) % self.n][0]
      avgy += norms[(i+t) % self.n][1]
    avgx /= self.n
    avgy /= self.n
    return avgx, avgy

  def overlay(self, other, i, j, stepsize=1):
    aix, aiy = self.points[i]
    bjx, bjy = other.points[j]

    self.move(bjx-aix, bjy-aiy)

    anormx, anormy = self.normAverageAround(i, stepsize)
    bnormx, bnormy = self.normAverageAround(j, stepsize)
  
    dot = anormx*bnormx + anormy*bnormy
    det = anormx*bnormy - anormy*bnormx
    angle = math.atan2(det, dot)
