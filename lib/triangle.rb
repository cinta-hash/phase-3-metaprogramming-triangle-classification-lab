class Triangle
  attr_accessor :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
def kind
  if [@a, @b, @c].any?{|x| x <= 0}
  raise TriangleError, "Sides must have positive length" 
end

sides = [@a,@b, @c].sort
unless sides[0] + sides[1] > sides[2]
  raise TriangleError, "Does not satisfy triangle inequality"
end
  
  if @a == @b && @b == @c 
    :equilateral
  elsif @a == @b || @a == @c || @b == @c
    :isosceles
  else
    :scalene
  end
end
  class TriangleError < StandardError
  end
end
