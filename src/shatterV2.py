import numpy as np
import cv2
import random
import copy

import shapely
from shapely.ops import unary_union
from shapely.geometry import Polygon as ShapelyPolygon

import math
import sys
import os
from dotenv import load_dotenv

from display import Display

load_dotenv()

scale = 0.1
data_path = os.getenv("DATASET_PATH") + sys.argv[1]





def fitPoly(A, B, i, j, stepsize=1): # fit part of A to part of B
  A = movePoly(A, B.pts[j][0]-A.pts[i][0], B.pts[j][1]-A.pts[i][1])

  ## average normals in this segment dictated by stepsize
  A_normX = 0
  A_normY = 0
  B_normX = 0
  B_normY = 0

  A_norms = [[-point[1], point[0]] for point in A.points]
  B_norms = [[-point[1], point[0]] for point in B.points]

  A_normLen = len(A_norms)
  B_normLen = len(B_norms)
  for t in range(stepsize):
    A_normX += A_norms[(i+t)%A_normLen][0]
    A_normY += A_norms[(i+t)%A_normLen][1]
    B_normX += B_norms[(j+t)%B_normLen][0]
    B_normY += B_norms[(j+t)%B_normLen][1]
  A_normX /= A_normLen
  A_normY /= A_normLen
  B_normX /= B_normLen
  B_normY /= B_normLen

  dot = A_normX*B_normX + A_normY*B_normY      # Dot product between [x1, y1] and [x2, y2]
  det = A_normX*B_normY - A_normY*B_normX      # Determinant
  angle = math.atan2(det, dot)  # atan2(y, x) or atan2(sin, cos)
  A = rotatePoly(A, B.pts[j], angle+3.1415)

  return A

def score(img, poly1, poly2, draw=False):
  global img
  p1 = Polygon(poly1.pts)
  p2 = Polygon(poly2.pts)
  
  fullArea = p1.area + p2.area

  sc = 0
  if doIntersect(poly1, poly2):
    sc += p1.intersection(p2).area/fullArea*100
  
  #uniPoly = Poly()
  sc+= unary_union([p1, p2]).convex_hull.area/fullArea
  #return sc
  for i in range(len(poly2.pts)):
    point = poly2.pts[i]
    pointD = shapely.distance(shapely.Point(point), p1.exterior)

    #sc += pointD/1000
    if pointD < 1.5:
      sc -= poly2.lens[i]*10
      if draw:
        img = cv2.circle(img, (point[0], point[1]), 5, (255,0,0), thickness=1, lineType=8, shift=0)
    if pointD > 1.5 and pointD < 5:
      sc += poly2.lens[i]*10
  return sc

fragments = []
for file in os.listdir(folder):
  if file.endswith(".png"):
    name = file.split(".")[0]
    if (not "_" in name) and (name != "gt"):
      fragments.append(loadPoly(name))


dbgBest = False
fittingStep = 1
topFit = 1

def getBestFit(A, B, count):
  bestScore = 9999999999
  scores = []
  i = 0
  while i < len(A.pts):
    j = 0
    while j < len(B.pts):
      fitA = fitPoly(copy.deepcopy(A), B, i, j, fittingStep)
      sc = score(fitA, B)

      scores.append([i, j, sc])
      if sc < bestScore:
        bestScore = sc
        if dbgBest:

          Display.clear(img)
          Display.draw(img, fitA)
          Display.draw(img, B)
          score(fitA, B, True) # dbg score
          Display.show(img)
        #cv2.waitKey(1)
      j+=fittingStep
    i+=fittingStep

  scores.sort(key= lambda x: x[2])
  return scores[0:count]


scoreSUM = 0
for i in range(len(fragments)):
  for j in range(i+1, len(fragments)):
    fit = getBestFit(fragments[i], fragments[j], topFit)
    fragments[i].fits[j] = fit
    fragments[j].fits[i] = [ [x[1], x[0], x[2]] for x in fit ]
    
    s = 0
    for k in range(topFit):
      debugFit(fragments[i], fragments[j], fit[k])
      s += fit[k][2] / (k+1)

    scoreSUM += s
    fragments[i].fits[j] = s
    fragments[j].fits[i] = s
    #print(fragments[i].name, fragments[j].name, s)

for i in range(len(fragments)):
  print(fragments[i].name + ": ")
  for j in range(len(fragments)):
    if i != j:
      score = fragments[i].fits[j]
      print("	" + fragments[j].name + " " + str(score/scoreSUM))



