import copy
import numpy as np
import cv2
from random import randrange

import shapely
from shapely.geometry import Polygon as ShapelyPolygon

from polygon import Polygon
from touching import Touching

class Display:

  def __init__(self):
    self.img = np.zeros([500,500,3],dtype=np.uint8)

  def clear(self):
    self.img.fill(0)

  def show(self, time=0):
    cv2.imshow("", self.img)
    cv2.waitKey(time)

  def draw(self, poly: Polygon, color=None):
    color = color or [randrange(256) for _ in range(3)]
    self.img = cv2.polylines(self.img, [np.array(poly.points, np.int32)], isClosed=False, color=color, thickness=2)

  def debugTouching(self, A: Polygon, B: Polygon, touching: Touching, fittingStep, time=0):
    self.clear()
    fittedA = copy.deepcopy(A)
    fittedA.overlay(B, touching.i, touching.j, fittingStep)
    self.draw(fittedA)
    self.draw(B)
    shapelyA = ShapelyPolygon(fittedA.points)
    for i in range(B.n):
      pointB = shapely.Point(B.points[i])
      pointDist = shapely.distance(pointB, shapelyA.exterior)

    if pointDist < 1.5:
      self.img = cv2.circle(self.img, (int(B.points[i][0]), int(B.points[i][1])), 5, (255,0,0), thickness=1, lineType=8, shift=0)
   
    self.show(time)
