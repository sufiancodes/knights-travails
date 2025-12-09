def generate_moves(origin)
  adjacent = []
  # up
  adjacent << [origin[0] + 2, origin[1] - 1]
  adjacent << [origin[0] + 2, origin[1] + 1]
  # left
  adjacent << [origin[0] - 2, origin[1] - 1]
  adjacent << [origin[0] - 2, origin[1] + 1]
  # right
  adjacent << [origin[0] + 1, origin[1] - 2]
  adjacent << [origin[0] + 1, origin[1] + 2]
  # down
  adjacent << [origin[0] - 1, origin[1] - 2]
  adjacent << [origin[0] - 1, origin[1] + 2]

  filter_illegal_position(adjacent)
end

def filter_illegal_position(array)
    filteration = array.reject do |inner_array|
    inner_array.any? {|element| element < 0 || element > 7}
  end
end


def knight_move(start_point, end_point)
  parent = {start_point => nil}
  visited = [start_point]
  queue = [start_point]
  while !queue.empty?
    current = queue.shift


    if current == end_point
      reconstruct_path(start_point, end_point, parent)
    end
    moves = generate_moves(current)
    moves.each do |child|
      if !visited.include?(child)
        visited.push(child)
        parent[child] = current
        queue.push(child)
      end
    end
  end

end

def reconstruct_path(start, ending, parent)
  path = [ending]
  current = parent[ending]
  while current != start do
    path.push(current)
    current = parent[current]
  end
  path.push(start)
  p path.reverse
end


knight_move([0,0],[3,3])
