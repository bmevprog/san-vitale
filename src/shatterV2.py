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
dbgBest = False
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
  for i in range(len(poly2.points)):
    point = poly2.points[i]
    pointDist = shapely.distance(shapely.Point(point), p1.exterior)
    if pointDist < 1.5:
      score -= poly2.lengths[i]*10
    if pointDist > 1.5 and pointDist < 5:
      score += poly2.lengths[i]*10
  """
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
          display.debugTouching(A, B, Touching(i, j, score), fittingStep)

  touchings.sort(key= lambda t: t.score)
  return touchings[0:count]


def runScoring(polygons):
  for i in range(len(polygons)):
    polygons[i].touchings = [None for _ in range(len(polygons))]

  totalScore = 0
  for i in range(len(polygons)):
    for j in range(i+1, len(polygons)):

      touchings = getBestTouchings(polygons[i], polygons[j], maxTouchings)
      polygons[i].touchings[j] = touchings
      polygons[j].touchings[i] = [Touching(t.j, t.i, t.score) for t in touchings]

      s = 0
      for k in range(maxTouchings):
        display.debugTouching(polygons[i], polygons[j], touchings[k], fittingStep)
        s += touchings[k].score / (k+1)

      totalScore += s

  for i in range(len(polygons)):
    print(str(polygons[i].filepath) + ": ")
    for j in range(len(polygons)):
      if i != j:
        score = polygons[i].touchings[j][0].score
        print("	" + str(polygons[j].filepath) + " " + str(score/totalScore))

def main():
  print("running")
  polygons = []
  polygons = loadPolygons()
  runScoring(polygons)

if __name__ == "__main__":
  main()
