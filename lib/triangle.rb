class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if @a == @b && @a == @c
      return :equilateral
    elsif @a == @b || @a == @c || @b == @c

  end

end
