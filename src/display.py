import numpy as np
import cv2
from random import randrange

from polygon import Polygon
from touching import Touching

class Display:

  def __init__(self):
    self.img = np.zeros([500,500,3],dtype=np.uint8)

  def clear():
	  self.img.fill(0)

  def show(img):
  	cv2.imshow("", img)

  def draw(poly: Polygon, color=None):
	  color = color or [randrange(256) for _ in range(3)]
	  img = cv2.polylines(img, [np.array(poly.points, np.int32)], isClosed=False, color=color, thickness=2)

  def debugFit(poly1: Polygon, poly2: Polygon, touching: Touching):
    self.clear()

    A = copy.deepcopy(poly1)
    
    A = fitPoly(A, f2, fit[0], fit[1], fittingStep)
    Display.draw(img, A)
    Display.draw(img, f2)
    score(A, f2, True)
    Display.show(img)
    cv2.waitKey(0)
