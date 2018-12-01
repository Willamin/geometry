require "./point"

struct Geometry::Rectangle
  getter top_left : Point
  getter bottom_right : Point

  def initialize(@top_left, @bottom_right); end

  def width
    bottom_right.x - top_left.x
  end

  def height
    bottom_right.y - top_left.y
  end

  def area
    width * height
  end

  def perimeter
    width * 2 + height * 2
  end
end
