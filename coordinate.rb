class Coordinate
  attr_accessor :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def eql?(another)
    x == another.x && y == another.y
  end

  def hash
    [x, y].hash
  end

  def ==(another)
    x == another.x && y == another.y
  end

  def neighbours
    results = []
    (x-1..x+1).each do |x|
      (y-1..y+1).each do |y|
        results << Coordinate.new(x, y)
      end
    end
    results.delete(self)
    results
  end
end