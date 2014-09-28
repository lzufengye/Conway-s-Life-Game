class Cells

  def initialize(cell_list)
    @cell_list = cell_list
  end

  def min_x
    @cell_list.map(&:x).min

  end

  def min_y
    @cell_list.map(&:y).min

  end

  def max_x
    @cell_list.map(&:x).max
  end

  def max_y
    @cell_list.map(&:y).max
  end

  def each
    @cell_list.each do |cell|
      yield cell
    end
  end
end
