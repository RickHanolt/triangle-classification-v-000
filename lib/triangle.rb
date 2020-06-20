require 'pry'

class Triangle
  attr_accessor :side_a, :side_b, :side_c

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind
    if ((@side_a + @side_b) <= @side_c || (@side_a + @side_c) <= @side_b || (@side_c + @side_b) <= @side_a) || @side_a <= 0 || @side_b <= 0 || @side_c <= 0
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    end

    if @side_a == @side_b && @side_a == @side_c
      return :equilateral
    end

    if @side_a == @side_b || @side_a == @side_c || @side_b == @side_c
      return :isosceles
    end

    if @side_a != @side_b && @side_a != @side_c && @side_b != @side_c
      return :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "This is not a valid triangle."
    end
  end

end
