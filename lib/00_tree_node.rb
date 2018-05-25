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
    # if parent 
    #   parent.remove_child(self)
    # end
    
    @parent = node
    if !node.nil? && !node.children.include?(self)
      node.children << self
    end
  end
  
  def add_child(child)
    
  end
  
  def remove_child(child)
    
  end
end