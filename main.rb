def generate_moves(origin)
  adjacent = []
  # up
  adjacent << [origin[1] + 2, origin[0] - 1]
  adjacent << [origin[1] + 2, origin[0] + 1]
  # left
  adjacent << [origin[1] + 1, origin[0] - 2]
  adjacent << [origin[1] - 1, origin[0] - 2]
  # right
  adjacent << [origin[1] + 1, origin[0] + 2]
  adjacent << [origin[1] - 1, origin[0] + 2]
  # down
  adjacent << [origin[1] - 2, origin[0] - 1]
  adjacent << [origin[1] - 2, origin[0] + 1]
  p adjacent
end
def knight_move(start_point, end_point)
  generate_moves(start_point)
end
knight_move([3,3], [3,6])