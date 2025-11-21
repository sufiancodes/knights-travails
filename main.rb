def knight_move(start_point, end_point)
  start_position = start_point
  adjacent = []
  # up
  adjacent << [start_position[1] + 2, start_position[0] - 1]
  adjacent << [start_position[1] + 2, start_position[0] + 1]
  # left
  adjacent << [start_position[1] + 1, start_position[0] - 2]
  adjacent << [start_position[1] - 1, start_position[0] - 2]
  # right
  adjacent << [start_position[1] + 1, start_position[0] + 2]
  adjacent << [start_position[1] - 1, start_position[0] + 2]
  # down
  adjacent << [start_position[1] - 2, start_position[0] - 1]
  adjacent << [start_position[1] - 2, start_position[0] + 1]
  p adjacent
  # [[5,2]] this is legal move
end
knight_move([3,3], [3,6])