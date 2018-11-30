require "option_parser"
require "./geometry"

parser = OptionParser.new do |parser|
  parser.banner = "usage: geometry"

  parser.on("-v", "--version", "display the version") { puts Geometry::VERSION; exit 0 }
  parser.on("-h", "--help", "show this help") { puts parser; exit 0 }
end

parser.parse!
