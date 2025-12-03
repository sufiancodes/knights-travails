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

  remove_negative_from_2d_array(adjacent)
end

def remove_negative_from_2d_array(array)
    filteration = array.reject do |inner_array|
    inner_array.any? {|element| element < 0 }
  end
end

def knight_move(start_point, end_point)
  parent = {start_point => nil}
  visited = [start_point]
  # for every move we are just trying to remember its parent
  first_child = generate_moves(start_point)
  first_child.each do |child|
    parent[child] = start_point
  end
  first_child.each do |kid|
    second_child = generate_moves(kid)
    second_child.each do |child|
      if !visited.include?(child)
        parent[child] = kid
        visited.push(kid)
      end
    end
  end

  # pp parent
  # node = parent[[3,4]]
  # pp node
  
end
# knight_move([0,0], [3,3])
knight_move([3,3], [3,4])
# 
# p generate_moves([2,1])

















# first_child = generate_moves(start_point)
#   first_child.each do |kid|
#       parent[kid] = start_point
#   end
#   first_child.each do |kid|
#     second_child = generate_moves(kid)
#     second_child.each do |kido|
#       unless visited.include?(kido)
#         parent[kido] = kid
#         visited.push(kido)
#       end
#     end
#   end
#   pp parent
#   node = parent[[3,3]]
#   p node







#  parent = {}
#   target = [3,3]
#   first_child_parent = [0,0]
#   first_child_child = generate_moves(first_child_parent)
#   first_child_child.each { |child| parent[child] = first_child_parent }
#   puts "first_child Search"
#   p parent

#   first_child_child.each do |second_childparent|
#   second_childchildren = generate_moves(second_childparent)
#   puts "here are second parent"
#   p second_childparent
#   puts "here are second children"
#   p second_childchildren
  
#   second_childchildren.each { |second_childchild| parent[second_childchild] = second_childparent }
#   end
  
#   puts "Second search"
#   pp parent

  # path = []
  # path << target
  # node = parent[target]
  # while node != first_child_parent
  #   path << node
  #   node = parent[node]
  # end
  # path << first_child_parent
  # p path.reverse