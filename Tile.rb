
class Tile

  NEIGHBOR_VALS =[[-1, -1], [-1,  0], [1,  1], [ 0, -1], [ 0,  1],
                  [ 1, -1], [ 1,  0], [ 1,  1]]

  attr_reader :bomb, :revealed, :neighbor_bombs

  def initialize(board, position, random_bomb_number)
    @board = board
    @position = position
    @flag = false
    @bomb = random_bomb_number == 0 ? true : false
    @revealed = false
    @neighbor_bombs = nil
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

  def neighbors(pos)
    row, col = pos
    friends = NEIGHBOR_VALS.map do |delta|
      [delta[0] + row , delta[1] + col]
    end

    friends.reject!{|pos| pos[0] > @board.size || pos[1] > @board.size}
    friends.map!{|pos| @board[pos]}
  end

  def neighbor_bomb_count(pos)
    friends = neighbors(pos)
    bomb_count = 0

    friends.each do |friend|
        bomb_count += 1 if friend.bomb
    end

    self.neighbor_bombs = bomb_count
  end

  def inspect
    {
      @pos => pos,
      @bomb => bomb,
      @neighbor_bombs => neighbor_bombs
    }
  end
end
