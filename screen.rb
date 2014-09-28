class Screen

  def initialize(min_x, max_x, min_y, max_y)
    @min_x = min_x
    @max_x = max_x
    @min_y = min_y
    @max_y = max_y
    @map = {}
    init_map
  end

  def get(x, y)
    @map[Coordinate.new(x, y)]
  end

  def set(x, y, status)
    @map[Coordinate.new(x, y)] = status
  end

  def self.screen_for(live_cells)
    screen = Screen.new(
        live_cells.min_x, live_cells.max_x, live_cells.min_y, live_cells.max_y)

    live_cells.each do |c|
      screen.set(c.x, c.y, true)
    end

    screen
  end

  def next
    Screen.new(@min_x-1, @max_x+1, @min_y-1, @max_y+1)
  end

  def each
    (@min_x..@max_x).each do |x|
      (@min_y..@max_y).each do |y|
        yield x, y
      end
    end
  end

  private

  def init_map
    each { |x, y| set(x, y, false) }
  end
end