class Game

  attr_accessor :current_screen

  def initialize(seed)
    @current_screen = Screen.screen_for(seed)
  end

  def tick
    next_screen = current_screen.next

    next_screen.each do |x, y|
      cell = Coordinate.new(x, y)

      lived_neighbour_number = cell.neighbours.select do |neighbour|
        current_screen.get(neighbour.x, neighbour.y)
      end.size

      cell_status = current_screen.get(cell.x, cell.y)

      next_status = false
      if cell_status && lived_neighbour_number == 2
        next_status = true
      elsif lived_neighbour_number == 3
        next_status = true
      elsif lived_neighbour_number > 3 || lived_neighbour_number < 2
        next_status = false
      end

      next_screen.set(cell.x, cell.y, next_status)
    end
    @current_screen = next_screen
  end

  private


end
