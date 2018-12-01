require "./spec_helper"

describe Geometry do
  alias Point = Geometry::Point
  alias Line = Geometry::Line
  alias Rectangle = Geometry::Rectangle

  test "line length" do
    a = Point.new(1, 2)
    b = Point.new(2, 2)
    c = Point.new(1, 1)
    assert Line.new(a, b).length == 1
    assert Line.new(b, a).length == 1

    assert Line.new(a, c).length == 1
    assert Line.new(c, a).length == 1

    assert Line.new(b, c).length == Math.sqrt(2)
    assert Line.new(c, b).length == Math.sqrt(2)
  end

  test "rectangle area" do
    a = Point.new(1, 1)
    b = Point.new(3, 3)
    assert Rectangle.new(a, b).area == 4
  end

  test "rectangle perimeter" do
    a = Point.new(1, 1)
    b = Point.new(3, 3)
    assert Rectangle.new(a, b).perimeter == 8
  end
end
