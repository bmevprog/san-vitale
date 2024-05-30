import os
import sys
import copy
import math
import random

from pathlib import Path
from dotenv import load_dotenv

import numpy as np
import cv2
import shapely
from shapely.geometry import Polygon as ShapelyPolygon
from shapely.ops import unary_union

from polygon import Polygon
from display import Display
from touching import Touching

load_dotenv()
data_path = Path(os.getenv("DATASET_PATH") + sys.argv[1])
scale = float(os.getenv("SCALE"))
dbgBest = True
fittingStep = 1
maxTouchings = 1

display = Display()

def loadPolygons():
  result = []
  for file in data_path.glob("*.txt"):
      if "adjacency" != file.stem:
        print(f"${file} loaded")
        result.append(Polygon.load(file, scale))
  return result

def scorePosition(poly1: Polygon, poly2: Polygon):
  p1 = ShapelyPolygon(poly1.points)
  p2 = ShapelyPolygon(poly2.points)
  fullArea = p1.area + p2.area

  score = 0
  if poly1.isIntersecting(poly2):
    score += p1.intersection(p2).area/fullArea*10

  score += unary_union([p1, p2]).convex_hull.area/fullArea/10

  """
  display.clear()
  display.draw(poly1)
  display.draw(poly2)
  display.show(1)
  """
  """
  p = Polygon(list(unary_union([p1, p2]).convex_hull.exterior.coords))
  display.clear()
  display.draw(p)
  display.draw(poly1)
  display.draw(poly2)

  display.show()
  """
  
  for i in range(len(poly2.points)):
    point = poly2.points[i]
    pointDist = shapely.distance(shapely.Point(point), p1.exterior)
    if pointDist < 1.5:
      score -= poly2.lengths[i]
    if pointDist > 1.5 and pointDist < 5:
      score += poly2.lengths[i]
  
  return score

def getBestTouchings(A, B, count):
  bestScore = 9999999999
  touchings = []

  for i in range(0, A.n, fittingStep):
    for j in range(0, B.n, fittingStep):
      fittedA = copy.deepcopy(A)
      fittedA.overlay(B, i, j, fittingStep)
      score = scorePosition(fittedA, B)
      touchings.append(Touching(i, j, score))
      if score < bestScore:
        bestScore = score
        if dbgBest:
          display.debugTouching(A, B, Touching(i, j, score), fittingStep, time=1)

  touchings.sort(key= lambda t: t.score)
  return touchings[0:count]


from shapely import coverage_union
def mergeBest(polygons, wasMerged=False):
  

  totalScore = 0
  bestTouching = None
  bestPolyPair = [None, None]
  bestScore = 999999999999
  if not wasMerged: # calculate every pair's scores and store it
    for i in range(len(polygons)):
      polygons[i].touchings = [None for _ in range(len(polygons))]

    for i in range(len(polygons)):
      for j in range(i+1, len(polygons)):
        touching = getBestTouchings(polygons[i], polygons[j], 1)[0]
        polygons[i].touchings[j] = touching
        polygons[j].touchings[i] = Touching(touching.j, touching.i, touching.score)
        if touching.score < bestScore:
          bestScore = touching.score
          bestPolyPair = [ i, j ]
          bestTouching = touching
  else: # we only need to recalculate for the last polygon (the latest merged one)
    for i in range(len(polygons)-1):
      polygons[i].touchings.append(None)

    polygons[-1].touchings = [None for _ in range(len(polygons))]

    for i in range(len(polygons)-1):
      touching = getBestTouchings(polygons[-1], polygons[i], 1)[0]
      polygons[-1].touchings[i] = touching
      polygons[i].touchings[-1] = Touching(touching.j, touching.i, touching.score)

    for i in range(len(polygons)):
      for j in range(i+1, len(polygons)):
        touching = polygons[i].touchings[j]
        if touching.score < bestScore:
          bestScore = touching.score
          bestPolyPair = [i, j]
          bestTouching = touching    

  i, j = bestPolyPair
  #display.debugTouching(polygons[i], polygons[j], bestTouching, fittingStep)

  ## merging best poly pair
  polygons[i].overlay(polygons[j], bestTouching.i, bestTouching.j)
  shapelyPoly1 = ShapelyPolygon(polygons[i].points)
  shapelyPoly2 = ShapelyPolygon(polygons[j].points)

  # points on concave hull, reversed because it needs to be oriented the way other polygons are
  # also converting it from tuple to vectors
  points = []
  union = unary_union([shapelyPoly1, shapelyPoly2])
  if type(union) == ShapelyPolygon:
    points = [[v[0], v[1]] for v in list(union.exterior.coords)][::-1]
  else:
    points = [[v[0], v[1]] for v in list(shapely.concave_hull(union, 0.5).exterior.coords)][::-1]

  mergedPoly = Polygon(points)
  display.clear()
  display.draw(polygons[i])
  display.draw(polygons[j])
  display.draw(mergedPoly)
  display.show(500)
  for index in sorted([i,j], reverse=True): # remove the two polygons we just merged. (indexes from largest to smallest)
    polygons.pop(index)

  for i in range(len(polygons)): # remove the touchings of removed polygons
    for index in sorted([i,j], reverse=True):
      polygons[i].touchings.pop(index)

  polygons.append(mergedPoly)
  return polygons

def main():
  polygons = []
  polygons = loadPolygons()
  polyCount = len(polygons)
  for i in range(polyCount-1):
    polygons = mergeBest(polygons, i > 0)
  cv2.waitKey(0)

if __name__ == "__main__":
  main()
