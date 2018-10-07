class Triangle
  
  class TriangleError < StandardError
  end
  
  attr_accessor :kind
  
  def initialize(side1, side2, side3)
    
  end
  
  def kind
    if !self.valid?
      return TriangleError
    elsif self.equilateral?
      :equilateral
    end
  end
  
  def valid?
    if self.side3 > (self.side1 - self.side2) && self.side3 < (self.side1 + self.side2)
      true
    else false
    end
  end
    
end
