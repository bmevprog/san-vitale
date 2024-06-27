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
    self.img.fill(10)

  def show(self, time=0):
    cv2.imshow("", self.img)
    cv2.waitKey(time)

  def draw(self, poly: Polygon, color=None, drawColors=True):
    color = color or [randrange(256) for _ in range(3)]
    self.img = cv2.polylines(self.img, [np.array(poly.points, np.int32)], isClosed=False, color=color, thickness=2)

    if drawColors:
      for i in range(poly.n):
        for c in poly.colors.getNearby(poly.points[i][0], poly.points[i][1]):
          x,y,col = c
          rx, ry = poly.colors.adjustPoint_inverse(x,y)
          self.img = cv2.circle(self.img, [int(rx), int(ry)], 3, color=col.color, thickness=3)

  def debugTouching(self, A: Polygon, B: Polygon, touching: Touching, fittingStep, scoreFunction, time=0):
    self.clear()
    #fittedA = copy.deepcopy(A)
    #fittedA.overlay(B, touching.i, touching.j, fittingStep)
    fittedA = A
    self.draw(fittedA, (255,255,255))
    self.draw(B, (0,255,0))
    shapelyA = ShapelyPolygon(fittedA.points)
    
    scoreFunction(fittedA, B, touching.i, touching.j, True)
   
    self.show(time)
