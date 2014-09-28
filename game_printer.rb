class GamePrinter
  MAX_X = 20
  MIN_X = -20
  MAX_Y = 20
  MIN_Y = -20

  def self.output(screen)
    (MIN_Y..MAX_Y).each do |y|
      (MIN_X..MAX_X).each do |x|
        is_live = screen.get(x, y)
        is_live ? print('*') : print(' ')
      end
      puts ''
    end
  end
end