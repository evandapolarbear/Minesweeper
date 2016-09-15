
class Tile
  def initialize(board, position)
    @board = board
    @position = position
    @flag = false
    @bomb = false
    @revealed = false
  end

  def flagged?
    flag
  end

  def reveal
  end

  def neighbors
  end

  def neighbor_bomb_count
  end


  # def inspect
  #
  # end
end
