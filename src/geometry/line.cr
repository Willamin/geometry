require "./point"

struct Geometry::Line
  getter a : Point
  getter b : Point

  def initialize(@a, @b); end

  def length : Float64
    Math.sqrt((a.x - b.x) ** 2 + (a.y - b.y) ** 2)
  end
end
