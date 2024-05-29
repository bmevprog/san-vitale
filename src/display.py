import numpy as np
import cv2
from random import randrange

class Display:

  def clear(img):
	  img.fill(0)

  def draw(img, poly, color=None):
	  if color == None:
		  color = (randrange(256), randrange(256), randrange(256))
	  img = cv2.polylines(img, [np.array(poly.pts, np.int32)], isClosed=False, color=color, thickness=2)

  def show(img):
  	cv2.imshow("", img)
