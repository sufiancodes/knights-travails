class Node
  attr_accessor :children, :parent
  
  def initialize(parent)
    @parent = parent
    @children = nil
  end
end
