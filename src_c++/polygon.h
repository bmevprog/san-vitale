#pragma once

#include <bits/stdc++.h>

#include "math.h"
using namespace std;

class Polygon {
  int n;
  vec<vec2> points;

 public:
  Polygon(vec<vec2>& points) : points(points) {}

  void add(vec2 point) { points.push_back(point); }
};