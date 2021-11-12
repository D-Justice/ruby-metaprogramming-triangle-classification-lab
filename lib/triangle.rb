class Triangle

  attr_reader :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    validation
    if a == b && b == c
      return :equilateral
    elsif a == b || b == c || c == a 
      return :isosceles
    else a !=b && b != c && c != a
      return :scalene
    end
  end
  def validation
    [a,b,c].each do |value|
      if value <= 0 || (a + b) <= c || (c + b) <= a || (a + c) <= b
        throw_error
      end
    end
  end
  def throw_error
    raise TriangleError

  end
  class TriangleError < StandardError
  end
end
