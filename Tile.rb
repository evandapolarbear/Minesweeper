
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
