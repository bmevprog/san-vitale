#pragma once

#include <bits/stdc++.h>
using namespace std;

#define vec vector
#define all(x) x.begin(), x.end

struct vec2 {
  int x;
  int y;
  int id;
};
vec2 operator+(vec2 a, vec2 b) { return {a.x + b.x, a.y + b.y}; }
vec2 operator-(vec2 a, vec2 b) { return {a.x - b.x, a.y - b.y}; }
istream &operator>>(istream &is, vec2 &x) { return is >> x.x >> x.y; }
bool operator==(const vec2 &v1, const vec2 &v2) {
  return (v1.x == v2.x && v1.y == v2.y);
}
bool operator<(const vec2 &v1, const vec2 &v2) {
  return tie(v1.x, v1.y) < tie(v2.x, v2.y);
}

