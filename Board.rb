
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
    @grid.length
  end

  def render
    puts "  #{(0..9)}"
    @grid.each_with_index do |row, idx|
      print "#{idx} "
      row.each do |tile|
        print " #{render_tile(tile)}"
        p tile.inspect
      end
      puts
    end
  end

  def all?(&prc)
    @grid.each do |row|
      row.each do |tile|
        prc.call(tile)
      end
    end
  end

  def render_tile(tile)
    return "*" if tile.revealed == false
    return "_" if tile.revealed
    return "F" if tile.flagged?
  end

  def update_tile(pos, action)
    case action
    when "u"
      @board[pos].unflag
    when "f"
      @board[pos].flag
    when "r"
      @board[pos].reveal
    end
  end
end
