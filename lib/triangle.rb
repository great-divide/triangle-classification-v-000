class Triangle
  
  class TriangleError < StandardError
  end
  
  attr_accessor :kind, :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    
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
  
  def equilateral?
    if self.valid? && side1 == side2 && side2 == side3
      true
    else false
    end
  end
    
end
