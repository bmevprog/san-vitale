import math

def clockwiseAngle(p1, p2, p3):

  x1, y1 = p1
  x2, y2 = p2
  x3, y3 = p3

  vx, vy = x2 - x3, y2 - y3
  ux, uy = x1 - x2, y1 - y2

  dot = vx*ux + vy*uy
  det = vx*uy - vy*ux
  angle = math.atan2(det, dot)

  return angle
