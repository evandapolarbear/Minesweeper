class Game
  def initialize(board, player)
    @board = board
    @player = player
  end

  def populate_board
    @board.size.times do |row_i|
      @board.size.times do |col_i|
        @board[row_i, col_i]= Tile.new()
      end
    end

  end

  def play
    populate_board
    until won? || explosion?
      if won?

      else

      end
    end
  end

  def won?

  end
end

if __FILE__ == $PROGRAM_NAME
  player = Player.new
  game = Game.new(Board.create_grid, player)
  game.play
end
