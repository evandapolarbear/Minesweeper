
class Tile
  attr_reader :bomb, :revealed

  def initialize(board, position, random_bomb_number)
    @board = board
    @position = position
    @flag = false
    @bomb = random_bomb_number == 0 ? true : false
    @revealed = false
  end

  def flagged?
    @flag
  end

  def flag
    @flag = true
  end

  def unflag
    @flag = false
  end

  def reveal
    @revealed = true unless @flag == true || @bomb == true
  end

  def neighbors
    x, y = @position
    neighbors[x + 1, y]
    [x - 1, y]
    [x, y + 1]
    [x, y -1]
    [x + 1, y + 1]
    [x + 1, y - 1]
    [x - 1, y + 1]
    [x - 1, y - 1]

  end

  def neighbor_bomb_count
  end


  def inspect

  end
end
