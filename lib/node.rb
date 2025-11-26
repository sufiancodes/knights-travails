class Node
  
  attr_accessor :parent, :first_child, :next_sibling 
  
  def initialize(parent)
    @parent = parent
    @first_child = nil
    @next_sibling = nil
  end
end
