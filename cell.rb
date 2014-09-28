class Cell

  attr_accessor :coordinate, :live
  attr_reader :x, :y

  def initialize options
    @coordinate = Coordinate.new(options[:x], options[:y])
    @live = options[:live]
  end

  def x
    @coordinate.x
  end

  def y
    @coordinate.y
  end
end
