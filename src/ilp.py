import numpy as np
import gurobipy as gp
from gurobipy import Model, GRB, QuadExpr, quicksum
from shapely.geometry import Polygon, Point
from shapely.affinity import translate, rotate, scale
from shapely.ops import unary_union
import matplotlib.pyplot as plt
import geopandas as gpd
from pathlib import Path

model = Model("san-vitale")
BIG_NUMBER = 2000000000

class Piece:

  def __init__(self, index, points):
    global model

    spike_scale = 1.2
    poly = Polygon(points)

    self.index = index
    self.polygon = translate(poly, xoff=-poly.centroid.x, yoff=-poly.centroid.y)
    self.spikes = scale(self.polygon, xfact=spike_scale, yfact=spike_scale)

    self.tx     = model.addVar(name=f'tx_{index}',                vtype=GRB.CONTINUOUS)
    self.ty     = model.addVar(name=f'ty_{index}',                vtype=GRB.CONTINUOUS)
    self.sina   = model.addVar(name=f'sina_{index}', lb=-1, ub=1, vtype=GRB.CONTINUOUS)
    self.cosa   = model.addVar(name=f'cosa_{index}', lb=-1, ub=1, vtype=GRB.CONTINUOUS)

    self.sina_tx = model.addVar(name=f'sina_tx_{index}', vtype=GRB.CONTINUOUS)
    self.cosa_tx = model.addVar(name=f'cosa_tx_{index}', vtype=GRB.CONTINUOUS)
    self.sina_ty = model.addVar(name=f'sina_ty_{index}', vtype=GRB.CONTINUOUS)
    self.cosa_ty = model.addVar(name=f'cosa_ty_{index}', vtype=GRB.CONTINUOUS)

    model.addQConstr(self.sina * self.sina + self.cosa * self.cosa == 1, name=f'sinacosa_{index}')
    model.addQConstr(self.sina * self.tx == self.sina_tx, name=f'sina_tx_{index}')
    model.addQConstr(self.cosa * self.tx == self.cosa_tx, name=f'cosa_tx_{index}')
    model.addQConstr(self.sina * self.ty == self.sina_ty, name=f'sina_ty_{index}')
    model.addQConstr(self.cosa * self.ty == self.cosa_ty, name=f'cosa_ty_{index}')

    self.sina_i_sina_j = []
    self.sina_i_cosa_j = []
    self.cosa_i_sina_j = []
    self.cosa_i_cosa_j = []
    self.sina_i_tx_j = []
    self.sina_i_ty_j = []
    self.cosa_i_tx_j = []
    self.cosa_i_ty_j = []

  def indicator_point_inside_poly(self, other, pi, spike = False):
    global model
    
    indicator_name = f'poly_{other.index}_{"spike_" if spike else ""}point_{pi}_inside_{self.index}'
    indicator = model.addVar(name=indicator_name, vtype=GRB.BINARY)

    vertices = list(other.polygon.exterior.coords)
    n = len(vertices)

    sina = self.sina
    cosa = self.cosa
    tx = self.tx
    ty = self.ty

    if not spike:
      px, py = other.polygon.exterior.coords[pi]
    else:
      px, py = other.spikes.exterior.coords[pi]

    sina_tx = self.sina_tx
    cosa_tx = self.cosa_tx
    sina_ty = self.sina_ty
    cosa_ty = self.cosa_ty

    sina_sinb = self.sina_i_sina_j[other.index]
    sina_cosb = self.sina_i_cosa_j[other.index]
    cosa_sinb = self.cosa_i_sina_j[other.index]
    cosa_cosb = self.cosa_i_cosa_j[other.index]
    
    sina_wx = self.sina_i_tx_j[other.index]
    sina_wy = self.sina_i_ty_j[other.index]
    cosa_wx = self.cosa_i_tx_j[other.index]
    cosa_wy = self.cosa_i_ty_j[other.index]

    for k in range(n - 1):
      ax, ay = vertices[k]
      bx, by = vertices[k+1]
      nx = ay - by
      ny = bx - ax
      model.addConstr(
        sina      * (nx * ay - ny * ax)     + \
        cosa      * (nx * ax + ny * ay)     + \
        sina_tx   * (-ny)                   + \
        sina_ty   * nx                      + \
        cosa_tx   * nx                      + \
        cosa_ty   * ny                      + \
        indicator * BIG_NUMBER                \
                  <=                          \
        sina_wy   * nx                      + \
        sina_wx   * (-ny)                   + \
        cosa_wx   * nx                      + \
        cosa_wy   * ny                      + \
        sina_sinb * (nx * px + ny * py)     + \
        sina_cosb * (nx * py - ny * px)     + \
        cosa_sinb * (ny * px - nx * py)     + \
        cosa_cosb * (ny * py + nx * px)     + \
        BIG_NUMBER                            ,
        name=f'{indicator_name}_constraint_{k}_true'
      )
      model.addConstr(
        sina_wy   * nx                      + \
        sina_wx   * (-ny)                   + \
        cosa_wx   * nx                      + \
        cosa_wy   * ny                      + \
        sina_sinb * (nx * px + ny * py)     + \
        sina_cosb * (nx * py - ny * px)     + \
        cosa_sinb * (ny * px - nx * py)     + \
        cosa_cosb * (ny * py + nx * px)     + \
        indicator * (-BIG_NUMBER)             \
                  <=                          \
        sina      * (nx * ay - ny * ax)     + \
        cosa      * (nx * ax + ny * ay)     + \
        sina_tx   * (-ny)                   + \
        sina_ty   * nx                      + \
        cosa_tx   * nx                      + \
        cosa_ty   * ny                        ,
        name=f'{indicator_name}_constraint_{k}_false'
      )
      return indicator

  def load(index, filepath):
    print(f"Loading polygon: {filepath}")
    points = []
    with open(filepath) as f:
        lines = f.readlines()
        for line in lines:
            x, y = map(int, line.split("\t"))
            points.append((x, y))
    return Piece(index, points)

  def set_cross_variables(pieces):
    global model

    n = len(pieces)
    for i in range(n):
      pieces[i].sina_i_sina_j = [None] * n
      pieces[i].sina_i_cosa_j = [None] * n
      pieces[i].cosa_i_sina_j = [None] * n
      pieces[i].cosa_i_cosa_j = [None] * n
      pieces[i].sina_i_tx_j = [None] * n
      pieces[i].sina_i_ty_j = [None] * n
      pieces[i].cosa_i_tx_j = [None] * n
      pieces[i].cosa_i_ty_j = [None] * n

    for i in range(len(pieces)):
      for j in range(i+1, len(pieces)):
        pieces[i].sina_i_sina_j[j] = model.addVar(name=f'sina_{i}_sina_{j}', vtype=GRB.CONTINUOUS)
        pieces[i].sina_i_cosa_j[j] = model.addVar(name=f'sina_{i}_cosa_{j}', vtype=GRB.CONTINUOUS)
        pieces[i].cosa_i_sina_j[j] = model.addVar(name=f'cosa_{i}_sina_{j}', vtype=GRB.CONTINUOUS)
        pieces[i].cosa_i_cosa_j[j] = model.addVar(name=f'cosa_{i}_cosa_{j}', vtype=GRB.CONTINUOUS)

        model.addQConstr(pieces[i].sina * pieces[j].sina == pieces[i].sina_i_sina_j[j], name=f'sina_{i}_sina_{j}')
        model.addQConstr(pieces[i].sina * pieces[j].cosa == pieces[i].sina_i_cosa_j[j], name=f'sina_{i}_cosa_{j}')
        model.addQConstr(pieces[i].cosa * pieces[j].sina == pieces[i].cosa_i_sina_j[j], name=f'cosa_{i}_sina_{j}')
        model.addQConstr(pieces[i].cosa * pieces[j].cosa == pieces[i].cosa_i_cosa_j[j], name=f'cosa_{i}_cosa_{j}')

        pieces[j].sina_i_sina_j[i] = pieces[i].sina_i_sina_j[j]
        pieces[j].cosa_i_sina_j[i] = pieces[i].sina_i_cosa_j[j]
        pieces[j].sina_i_cosa_j[i] = pieces[i].cosa_i_sina_j[j]
        pieces[j].cosa_i_cosa_j[i] = pieces[i].cosa_i_cosa_j[j]

    for i in range(len(pieces)):
      for j in range(len(pieces)):
        if i!=j:
          pieces[i].sina_i_tx_j[j] = model.addVar(name=f'sina_{i}_tx_{j}', vtype=GRB.CONTINUOUS)
          pieces[i].sina_i_ty_j[j] = model.addVar(name=f'sina_{i}_ty_{j}', vtype=GRB.CONTINUOUS)
          pieces[i].cosa_i_tx_j[j] = model.addVar(name=f'cosa_{i}_tx_{j}', vtype=GRB.CONTINUOUS)
          pieces[i].cosa_i_ty_j[j] = model.addVar(name=f'cosa_{i}_ty_{j}', vtype=GRB.CONTINUOUS)

          model.addConstr(pieces[i].sina * pieces[j].tx == pieces[i].sina_i_tx_j[j], name=f'sina_{i}_tx_{j}')
          model.addConstr(pieces[i].sina * pieces[j].ty == pieces[i].sina_i_ty_j[j], name=f'sina_{i}_ty_{j}')
          model.addConstr(pieces[i].cosa * pieces[j].tx == pieces[i].cosa_i_tx_j[j], name=f'cosa_{i}_tx_{j}')
          model.addConstr(pieces[i].cosa * pieces[j].ty == pieces[i].cosa_i_ty_j[j], name=f'cosa_{i}_ty_{j}')

  def load_dir(dirpath):
    pieces = []
    print(f"Loading polygons from: {dirpath}")
    index = 0
    for file in Path(dirpath).glob("*.txt"):
        if "adjacency" != file.stem:
            piece = Piece.load(index, file)
            pieces.append(piece)
            index += 1
    Piece.set_cross_variables(pieces)
    return pieces

def solve(pieces):
  global model

  spike_points = []
  n = len(pieces)
  for i in range(n):
    print(f"Setting constraints for polygon {i}")
    for j in range(n):
      if i != j:
        print(f"With polygon {j}")
        for k in range(len(pieces[j].polygon.exterior.coords)):
          indicator = pieces[i].indicator_point_inside_poly(pieces[j], k)
          model.addConstr(indicator == 1)
        for k in range(len(pieces[j].spikes.exterior.coords)):
          indicator = pieces[i].indicator_point_inside_poly(pieces[j], k, spike=True)
          spike_points.append(indicator)

  print("Setting objective")
  model.setObjective(quicksum(spike_points), GRB.MAXIMIZE)

  print("Writing to file")
  model.write("model.lp")

  print("Start optimization")
  model.optimize()
  print("Done optimization")

  print("----------")
  print("Result: ", model.objVal)
  print()
  for piece in pieces:
    print(f"Polygon {piece.index}:")
    print(f"Translation: {piece.tx.X}, {piece.ty.X}")
    print(f"Angle: sina={piece.sina.X}, cosa={piece.cosa.X}, a={np.arcsin(piece.sina.X)}={np.arccos(piece.cosa.X)}, 1={piece.sina.X**2 + piece.cosa.X**2}")

pieces = Piece.load_dir("../data/track1/train/1")
solve(pieces)

polygons_to_plot = [translate(rotate(piece.polygon, angle=np.arcsin(piece.sina.X)), xoff=piece.tx.X, yoff=piece.ty.X) for piece in pieces]
spikes_to_plot = [translate(rotate(piece.spikes, angle=np.arcsin(piece.sina.X)), xoff=piece.tx.X, yoff=piece.ty.X) for piece in pieces]

fig, ax = plt.subplots()
gdf = gpd.GeoDataFrame(geometry=polygons_to_plot)
gdf.plot(ax=ax, cmap='tab10', edgecolor='black')
for spike in spikes_to_plot:
  for point in spike.exterior.coords:
    plt.scatter(*point, color='red')
plt.show()
