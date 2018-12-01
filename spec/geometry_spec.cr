require "./spec_helper"

describe Geometry do
  alias Point = Geometry::Point
  alias Line = Geometry::Line

  test "line length" do
    a = Point.new(1, 2)
    b = Point.new(2, 2)
    l = Line.new(a, b)
    assert l.length == 1
  end
end
