#include <bits/stdc++.h>

#include <filesystem>

#include "polygon.h"
#include "math.h"
using namespace std;
using namespace std::filesystem;

vec<Polygon> loadPolygons(string& path) {
  vec<Polygon> result;

  if (!(exists(path) && is_directory(path)))
    throw runtime_error("[Folder does not exist or is not a directory!]");

  cout << "[Reading data from \"" << path << "\"]" << endl;
  for (const auto& file : directory_iterator(path)) {
    if (!(file.path().extension() == ".txt" && file.path().stem() != "adjacency")) continue;
    cout << file.path() << endl;
  }
}

void main() {
  string path;  // path to the folder with the
                // polygon information and images
  cin >> path;
  vec<Polygon> polygons = loadPolygons(path);
}