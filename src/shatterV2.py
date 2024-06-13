import os
import sys
import copy
import math
import random

import asyncio

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
poolCount = 10
fittingStep = 1
maxTouchings = 1
multitask = True

display = Display()

def loadPolygons():
  result = []
  print("Loading data from: ", data_path)
  for file in data_path.glob("*.txt"):
      if "adjacency" != file.stem:
        print(f"${file} loaded")
        result.append(Polygon.load(file, str(data_path) + "\\" + file.stem + ".png", scale, file.stem))
  return result

from shapely.ops import nearest_points
def scorePosition(poly1: Polygon, poly2: Polygon, i, j, draw=False):
  p1 = ShapelyPolygon(poly1.points)
  p2 = ShapelyPolygon(poly2.points)
  fullArea = p1.area + p2.area
  smallerArea = min(p1.area, p2.area)

  areaScore = 0

  if poly1.isIntersecting(poly2):
    intersect = p1.intersection(p2).area
    areaScore += intersect*10
    intersect_percentage = intersect/smallerArea
    if intersect_percentage > 0.05:
      return 99999999999999

  union = unary_union([p1, p2])
  areaScore += union.convex_hull.area*10
  #score += shapely.concave_hull(union, 0.5).area/fullArea/10
  
  pointScore = 0
  colorscore = 0
  for _j in range(j-20, j+20):
    point = poly2.points[_j%poly2.n]
    pointDist = shapely.distance(shapely.Point(point), p1.exterior)

    if pointDist < 1.5:
      sc = poly2.lengths[_j%poly2.n]*10
      col1 = poly1.colors.getNearby(point[0], point[1])
      col2 = poly2.colors.getNearby(point[0], point[1])

      for c2 in range(len(col2)):
        for c1 in range(c2, len(col1)):  
          colorscore += col2[c2][2].score(col1[c1][2])

      #print(colorscore)
      
      pointScore -= sc
      if draw:
        display.img = cv2.circle(display.img, (int(poly2.points[_j%poly2.n][0]), int(poly2.points[_j%poly2.n][1])), 5, (sc*10,255,0), thickness=int(sc/100), lineType=8, shift=0)
  for _i in range(i-20, i+20):
    point = poly1.points[_i%poly1.n]
    pointDist = shapely.distance(shapely.Point(point), p2.exterior)

    if pointDist < 1.5:
      sc = poly1.lengths[_i%poly1.n]*10
      col1 = poly1.colors.getNearby(point[0], point[1])
      col2 = poly2.colors.getNearby(point[0], point[1])

      for c1 in range(len(col1)):
        for c2 in range(c1, len(col2)):
          colorscore += col1[c1][2].score(col2[c2][2])
      #print(colorscore)
      
      pointScore -= sc
      if draw:
        display.img = cv2.circle(display.img, (int(poly1.points[_i%poly1.n][0]), int(poly1.points[_i%poly1.n][1])), 5, (sc*10,255,0), thickness=int(sc/100), lineType=8, shift=0)

  if pointScore > -100:
    return 99999999999999
  
  #print(pointScore, areaScore/500, colorscore/100)
  return (pointScore*10 + areaScore/500 + colorscore/1000)

def getBestTouchings(task_data): # (A, B, count)
  A = task_data[0]
  B = task_data[1]
  count=task_data[2]

  bestScore = 9999999999
  touchings = []

  for i in range(0, A.n, fittingStep):
    for j in range(0, B.n, fittingStep):
      fittedA = A
      movedBy, rotatedBy, rotCenter = fittedA.overlay(B, i, j, fittingStep)
      score = scorePosition(fittedA, B, i, j)
      touchings.append(Touching(i, j, score))
      if score < bestScore:
        bestScore = score
        if dbgBest:
          display.debugTouching(A, B, Touching(i, j, score), fittingStep, scorePosition, time=1)

      #undo rotations
      fittedA.rotate(-rotatedBy, rotCenter)
      fittedA.move(-movedBy[0], -movedBy[1])

  touchings.sort(key= lambda t: t.score)
  return touchings[0:count]


from shapely import coverage_union
from multiprocessing import Pool

def mergeBest(polygons, wasMerged=False):  

  totalScore = 0
  bestTouching = None
  bestPolyPair = [None, None]
  bestScore = 999999999999
  if not wasMerged: # calculate every pair's scores and store it
    for i in range(len(polygons)):
      polygons[i].touchings = [None for _ in range(len(polygons))]

    tasks = []
    for i in range(len(polygons)):
      for j in range(i+1, len(polygons)):
        task = (polygons[i], polygons[j], 1)
        tasks.append(task)

    task_results = []
    if multitask:
      with Pool(poolCount) as p:
        task_results = p.map(getBestTouchings, tasks)
    else:
      for task in tasks:
        task_results.append(getBestTouchings(task))

    cnt = 0
    for i in range(len(polygons)):
      for j in range(i+1, len(polygons)):
        touching = task_results[cnt][0]#getBestTouchings(polygons[i], polygons[j], 1)[0]
        cnt+=1
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

    tasks = []
    for i in range(len(polygons)-1):
      task = (polygons[i], polygons[-1], 1)
      tasks.append(task)
    
    task_results = []
    if multitask:
      with Pool(poolCount) as p:
        task_results = p.map(getBestTouchings, tasks)
    else:
      for task in tasks:
        task_results.append(getBestTouchings(task))

    for i in range(len(polygons)-1):
      touching = task_results[i][0]#getBestTouchings(polygons[-1], polygons[i], 1)[0]
      polygons[i].touchings[-1] = touching
      polygons[-1].touchings[i] = Touching(touching.j, touching.i, touching.score)

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
  polygons[i].overlay(polygons[j], bestTouching.i, bestTouching.j, fitOriginals=True)
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

  polygons[i].colors.merge(polygons[j].colors)
  mergedPoly = Polygon("_", points, polygons[i].colors, True, polygons[i].originalPolys + polygons[j].originalPolys)
  display.clear()
  display.draw(polygons[i], (0,255,255))
  display.draw(polygons[j], (255,255,0))
  display.draw(mergedPoly, (255,255,255))
  display.show(500)
  for index in sorted([i,j], reverse=True): # remove the two polygons we just merged. (indexes from largest to smallest)
    polygons.pop(index)

  for idx in range(len(polygons)): # remove the touchings of removed polygons
    for index in sorted([i,j], reverse=True):
      polygons[idx].touchings.pop(index)

  polygons.append(mergedPoly)
  return polygons

def main():
  polygons = []
  polygons = loadPolygons()
  polyCount = len(polygons)
  for i in range(polyCount-1):
    polygons = mergeBest(polygons, i > 0)

  finalPolys = polygons[0].originalPolys
  display.clear()
  for poly in finalPolys:
    display.draw(poly, (255,0,0), False)
  display.show()
  cv2.waitKey(0)

  ShapelyFinalPolys = [ShapelyPolygon(x.points) for x in finalPolys]
  ##output connection graph
  mtx = {}
  for i in range(len(ShapelyFinalPolys)):
    mtx[finalPolys[i].name] = []
  for i in range(len(ShapelyFinalPolys)):
    for j in range(i+1, len(ShapelyFinalPolys)):
      dist = ShapelyFinalPolys[i].distance(ShapelyFinalPolys[j])
      #print(finalPolys[i].name,finalPolys[j].name,dist)

      if dist < 5:
        mtx[finalPolys[i].name].append(finalPolys[j].name)
        mtx[finalPolys[j].name].append(finalPolys[i].name)

  for key in mtx.keys():
    print(key + ": " + " ".join(mtx[key]))


import cProfile
if __name__ == "__main__":
  main()
  #cProfile.run('main()')
