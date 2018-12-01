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

  def intersects(other : Rectangle) : Bool
    return false if (self.top_left.x > (other.bottom_right.x) || other.top_left.x > (self.bottom_right.x))
    return false if (self.top_left.y > (other.bottom_right.y) || other.top_left.y > (self.bottom_right.y))

    true
  end
end
