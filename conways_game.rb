require_relative 'coordinate'
require_relative 'cell'
require_relative 'cells'
require_relative 'game'
require_relative 'screen'
require_relative 'game_printer'

cells = Cells.new([
    #Cell.new(x: 3, y: 2, live: true),
    Cell.new(x: 1, y: 1, live: true),
    Cell.new(x: 2, y: 1, live: true),
    Cell.new(x: 3, y: 1, live: true)
    #Cell.new(x: 2, y: 2, live: true),
    #Cell.new(x: 4, y: 1, live: true),
    #Cell.new(x: 0, y: 2, live: true)
])

game = Game.new(cells)
GamePrinter.output(game.current_screen)

while true do
  sleep 0.5
  game.tick
  GamePrinter.output(game.current_screen)
end
