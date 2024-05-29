
class Touching:

  def __init__(self):
    self.i = -1  # i is the index of the point in the first polygon.
    self.j = -1  # j is the index of the point in the second polygon.
    self.score = 0.0

    # We overlay these two points on top of each other
    # and find the best relative rotation angle that
    # maximizes the touching score.
