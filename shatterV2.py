import numpy as np
import cv2
import random
from random import randrange
import copy
import shapely
from shapely.geometry import Polygon
import math
import sys

img = np.zeros([500,500,3],dtype=np.uint8)
scale = 0.1
folder = "C:/Users/akosd/OneDrive/Desktop/prog/svitale/data/track1/" + sys.argv[1]

### MATH
def clockwiseAngleBetween(p1, p2, p3):
	v1 = [ p2[0] - p3[0], p2[1] - p3[1] ]
	v2 = [ p1[0] - p2[0], p1[1] - p2[1] ]
	dot = v1[0]*v2[0] + v1[1]*v2[1]      # Dot product between [x1, y1] and [x2, y2]
	det = v1[0]*v2[1] - v1[1]*v2[0]      # Determinant
	angle = math.atan2(det, dot)  # atan2(y, x) or atan2(sin, cos)
	return angle

### DISPLAY
def clearImg():
	img.fill(0)

def drawPoly(poly, color=None):
	global img
	if color == None:
		color = (randrange(256),randrange(256),randrange(256))
	img = cv2.polylines(img, [np.array(poly.pts, np.int32)], isClosed=False, color=color, thickness=2)

def show():
	cv2.imshow("", img)

### POLYGONS

class Poly:
	def __init__(self):
		self.pts=[]
		self.vecs=[]
		self.lens=[]
		self.normals=[]
		self.fits = {}
		self.name = ""

def movePoly(poly, x, y):
	for i in range(len(poly.pts)):
		poly.pts[i][0] += x
		poly.pts[i][1] += y
	return poly

def getCenter(poly):
	cx = 0
	cy = 0
	cnt = len(poly.pts)
	for i in range(cnt):
		cx += poly.pts[i][0]
		cy += poly.pts[i][1]
	return [cx/cnt, cy/cnt]

def rotatePoly(poly, center, angle):
	poly = movePoly(poly, -center[0], -center[1])
	for i in range(len(poly.pts)):
		x = poly.pts[i][0]
		y = poly.pts[i][1]
		poly.pts[i][0] = x*math.cos(angle) - y*math.sin(angle)
		poly.pts[i][1] = x*math.sin(angle) + y*math.cos(angle)
	poly = movePoly(poly, center[0], center[1])
	return poly

def rotatePolyCentered(poly, angle):
	return rotatePoly(poly, getCenter(poly), angle)

def calcPolyInfo(poly):
	poly.vecs=[]
	poly.lens=[]
	poly.normals=[]
	l = len(poly.pts)
	for i in range(0, l):
		x = poly.pts[(i+1)%l][0]
		y = poly.pts[(i+1)%l][1]
		px = poly.pts[i%l][0]
		py = poly.pts[i%l][1]
		vec = [x-px, y-py]
		norm = [-vec[1], vec[0]]
		poly.vecs.append(vec)
		poly.normals.append(norm)
		poly.lens.append(math.sqrt((x-px)**2 + (y-py)**2))

	return poly

def loadPoly(file):
	poly = Poly()
	poly.name = file
	with open(folder + "/" + file + ".txt") as f:
		lines = f.readlines()
		for line in lines:
			x = int(line.split("\t")[0])
			y = int(line.split("\t")[1])
			poly.pts.append( [int(x*scale),int(y*scale)] )
	poly = calcPolyInfo(poly)
	return poly

def doIntersect(poly1, poly2):
	p1 = Polygon(poly1.pts)
	p2 = Polygon(poly2.pts)
	return p1.intersects(p2)

def doManyIntersect(polys):
	ints = 0
	for i in range(len(polys)):
		for j in range(i+1, len(polys)):
			if doIntersect(polys[i], polys[j]):
				ints+=1
	return ints


def fitPoly(A, B, i, j, stepsize=1): # fit part of A to part of B
	A = movePoly(A, B.pts[j][0]-A.pts[i][0], B.pts[j][1]-A.pts[i][1])

	## average normals in this segment dictated by stepsize
	A_normX = 0
	A_normY = 0
	B_normX = 0
	B_normY = 0
	A_normLen = len(A.normals)
	B_normLen = len(B.normals)
	for t in range(stepsize):
		A_normX += A.normals[(i+t)%A_normLen][0]
		A_normY += A.normals[(i+t)%A_normLen][1]
		B_normX += B.normals[(j+t)%B_normLen][0]
		B_normY += B.normals[(j+t)%B_normLen][1]
	A_normX /= A_normLen
	A_normY /= A_normLen
	B_normX /= B_normLen
	B_normY /= B_normLen

	dot = A_normX*B_normX + A_normY*B_normY      # Dot product between [x1, y1] and [x2, y2]
	det = A_normX*B_normY - A_normY*B_normX      # Determinant
	angle = math.atan2(det, dot)  # atan2(y, x) or atan2(sin, cos)
	A = rotatePoly(A, B.pts[j], angle+3.1415)

	return A

from shapely.ops import unary_union
def score(poly1, poly2, draw=False):
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

import os
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

					clearImg()
					drawPoly(fitA)
					drawPoly(B)
					score(fitA, B, True) # dbg score
					show()
				#cv2.waitKey(1)
			j+=fittingStep
		i+=fittingStep

	scores.sort(key= lambda x: x[2])
	return scores[0:count]

def debugFit(f1, f2, fit):
	clearImg()
	A = copy.deepcopy(f1)
	A = fitPoly(A, f2, fit[0], fit[1], fittingStep)
	drawPoly(A)
	drawPoly(f2)
	score(A, f2, True)
	show()
	cv2.waitKey(0)

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




