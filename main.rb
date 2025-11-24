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
end

def remove_negative_from_2d_array(array)
    filteration = array.reject do |inner_array|
    inner_array.any? {|element| element < 0 }
  end
end

def knight_move(start_point, end_point)
  remove_negative_from_2d_array(generate_moves(start_point))
  
end
knight_move([3,3], [3,6])