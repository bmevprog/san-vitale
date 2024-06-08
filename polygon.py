import math
from shapely.geometry import Polygon as ShapelyPolygon
from random import randrange

import geometry
import copy
import cv2
import numpy as np

class PointGrid:
  def __init__(self, points, resolution):
    self.resolution = resolution
    self.grid = {}
    self.cells = []
    
    # orientation vectors
    self.oV1 = [0,0]
    self.oV2 = [1,0]

    for p in points:
      self.addPoint(p[0], p[1])

  def adjustPoint(self, x, y):
    x -= self.oV1[0]
    y -= self.oV1[1]
    
    vx, vy = self.oV2[0] - self.oV1[0], self.oV2[1] - self.oV1[1]
    ux, uy = 1, 0

    dot = vx*ux + vy*uy
    det = vx*uy - vy*ux
    angle = math.atan2(det, dot)
    #print(angle/(3.1415)*180)
    nx = x*math.cos(angle) - y*math.sin(angle)
    ny = x*math.sin(angle) + y*math.cos(angle)
    
    return nx, ny

  def adjustPoint_inverse(self, x, y):
   
    vx, vy = self.oV2[0] - self.oV1[0], self.oV2[1] - self.oV1[1]
    ux, uy = 1, 0

    dot = vx*ux + vy*uy
    det = vx*uy - vy*ux
    angle = -math.atan2(det, dot)
    #print(angle/(3.1415)*180)
    nx = x*math.cos(angle) - y*math.sin(angle)
    ny = x*math.sin(angle) + y*math.cos(angle)
    
    nx += self.oV1[0]
    ny += self.oV1[1]
    return nx, ny

  def move(self, x, y):
    self.oV1 = [self.oV1[0] + x, self.oV1[1] + y]
    self.oV2 = [self.oV2[0] + x, self.oV2[1] + y]

  def rotate(self, angle, origin):
    self.move(-origin[0], -origin[1])

    x, y = self.oV1
    self.oV1[0] = x*math.cos(angle) - y*math.sin(angle)
    self.oV1[1] = x*math.sin(angle) + y*math.cos(angle)
    x, y = self.oV2
    self.oV2[0] = x*math.cos(angle) - y*math.sin(angle)
    self.oV2[1] = x*math.sin(angle) + y*math.cos(angle)

    self.move(origin[0], origin[1])

  def addPoint(self, x, y, data=None):
    x,y = self.adjustPoint(x,y)
    gridX = int(x / self.resolution)
    gridY = int(y / self.resolution)
    cell = (gridX, gridY)

    if not cell in self.grid.keys():
      self.grid[cell] = []
      self.cells.append(cell)

    if data == None:
      self.grid[cell].append([x,y])
    else:
      self.grid[cell].append([x,y,data])

  def getNearby(self, x, y):
    x,y = self.adjustPoint(x,y)
    gridX = int(x / self.resolution)
    gridY = int(y / self.resolution)

    nearby = []
    for i in [-1,0,1]:
      for j in [-1,0,1]:
        cell = (gridX + i, gridY + j)
        if cell in self.grid.keys():
          nearby += self.grid[cell]
    return nearby

  def merge(self, other):
    for cell in other.cells:
      for i in range(len(other.grid[cell])):
        x,y,data = other.grid[cell][i]
        realX, realY = other.adjustPoint_inverse(x,y)
        self.addPoint(realX,realY,data)

class ColorSample:
  def __init__(self, x, y, color):
    self.color=color
    self.x = x
    self.y = y

  def colorDistTo(self, other):
    d0 = self.color[0] - other.color[0]
    d1 = self.color[1] - other.color[1]
    d2 = self.color[2] - other.color[2]
    return math.sqrt(d0**2 + d1**2 + d2**2)

  def score(self, other):
    colDist = self.colorDistTo(other)
    return (colDist)

class Polygon:

  def __init__(self):
    self.n=0
    self.points=[]
    self.vectors=[]
    self.lengths=[]
    self.touchings=[]
    self.filepath=""
    self.imgpath=""
    self.name="?"

  def __init__(self, name, points, colors, merged=False, originals=None):
    self.name = name
    self.merged = merged
    self.points = points
    self.colors = colors

    self.n = len(self.points)
    self.touchings = []
    self.filepath = ""
    self.imgpath = ""

    self.vectors = []
    self.lengths = []
    self.angles = []
    for i in range(self.n):
      x1, y1 = self.points[i % self.n]
      x2, y2 = self.points[(i+1) % self.n]
      vx, vy =  x2-x1, y2-y1
      length = math.sqrt(vx**2 + vy**2)
      self.vectors.append([vx, vy])
      self.lengths.append(length)

      x0, y0 = self.points[(i-1) % self.n]
      self.angles.append(geometry.clockwiseAngle([x0, y0], [x1, y1], [x2, y2]))

    if not merged:
      self.originalPolys = [copy.deepcopy(self)]
    else:
      self.originalPolys = originals

  def colorSamples(imgpath, points, scale):
    center = [0,0]
    for p in points:
      center[0] += p[0]
      center[1] += p[1]
    center = [ center[0]/len(points), center[1]/len(points) ]

    img = cv2.imread(imgpath)
    colors = []

    for p in points:
      for i in range(10):
        randX = (randrange(30)-15)/5
        randY = (randrange(30)-15)/5
        samplePoint = [ int(center[0]*0.1 + p[0]*0.9 + randX), int(center[1]*0.1 + p[1]*0.9 + randY) ]
        col = img[samplePoint[1]][samplePoint[0]]
        colors.append(ColorSample(samplePoint[0]*scale, samplePoint[1]*scale, [int(col[0]), int(col[1]), int(col[2])]))
    return colors

  def load(filepath, imgpath, scale, name):
    points = []
    unscaled_points = []
    colors = []
    with open(filepath) as f:
      lines = f.readlines()
      for line in lines:
        x, y = map(int, line.split("\t"))
        unscaled_points.append([x,y])
        x, y = int(x*scale), int(y*scale)
        points.append([x, y])

    colors = Polygon.colorSamples(imgpath, unscaled_points, scale)
    colorsGrid = PointGrid([], 10)
    for color in colors:
      colorsGrid.addPoint(color.x, color.y, color)

    poly = Polygon(name, points, colorsGrid)
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

    self.colors.move(x,y)

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
    self.colors.rotate(angle, origin)

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
    norms = [(-y, x) for x, y in self.vectors]
    for t in range(stepsize):
      avgx += norms[(i+t) % self.n][0]
      avgy += norms[(i+t) % self.n][1]
    avgx /= stepsize
    avgy /= stepsize
    return avgx, avgy

  def overlay(self, other, i, j, stepsize=1, fitOriginals=False):
    aix, aiy = self.points[i]
    bjx, bjy = other.points[j]

    self.move(bjx-aix, bjy-aiy)

    anormx, anormy = self.normAverageAround(i, stepsize)
    bnormx, bnormy = other.normAverageAround(j, stepsize)
  
    dot = anormx*bnormx + anormy*bnormy
    det = anormx*bnormy - anormy*bnormx
    angle = math.atan2(det, dot)

    self.rotate(angle+3.1415, [bjx, bjy])

    if fitOriginals:
      for i in range(len(self.originalPolys)):
        self.originalPolys[i].move(bjx-aix, bjy-aiy)
        self.originalPolys[i].rotate(angle+3.1415, [bjx, bjy])

    return (bjx-aix, bjy-aiy), angle+3.1415, [bjx, bjy]
