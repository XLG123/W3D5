class PolyTreeNode
  attr_reader :children, :value, :parent

  def initialize(value)
    @parent = nil
    @children = []
    @value = value
  end

  def parent=(person)
    @parent.children.delete(self) if !@parent.nil?
    @parent = person
    if !@parent.nil? && !@parent.children.include?(self)
      @parent.children << self
    end
  end
end