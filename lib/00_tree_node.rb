class PolyTreeNode
  
  def initialize(value)
    @value = value
    @parent = nil
    @children = []
  end
  
  def parent
    @parent
  end
  
  def children
    @children
  end
  
  def value
    @value
  end
  
  def parent=(node)
    if parent 
      parent.children.reject! {|child| child == self}
    end
    
    @parent = node
    if !node.nil? && !node.children.include?(self)
      node.children << self
    end
  end
  
  def add_child(child)
      child.parent = self 
  end
  
  def remove_child(child)
    raise "error" unless children.include?(child)
    child.parent = nil
  end
end
