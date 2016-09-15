
class Board

  def self.create_grid(grid = Array.new(9) {Array.new(9)})
    Board.new(grid)
  end

  def initialize(grid)
    @grid = grid
  end

  def [](pos)
    x, y= pos
    @grid[x][y]
  end

  def []=(pos, tile)
    x, y = pos
    @grid[x][y] = tile
  end

  def size
    grid.length
  end

end
