class Game
  def initialize(board, player)
    @board = board
    @player = player
  end

  def populate_board

    @board.size.times do |row_i|
      @board.size.times do |col_i|
        @board[row_i, col_i]= Tile.new(@board, [row_i, col_i], bomb_maker)
      end
    end

  end

  def bomb_maker
    (0...9).to_a.sample
  end

  def play
    populate_board

    pos = nil

    until won? || explosion?(pos)
      @board.render
      pos = get_position
    end
  end

  def won?
    @board.all? { |tile| tile.revealed? }
  end

  def explosion?(pos)
    x, y = pos
    @board[pos].bomb
  end

  def get_position
    puts "What tile would you like to select?"
    gets.chomp.split(",").map {|n| n.to_i}
  end
end

if __FILE__ == $PROGRAM_NAME
  player = Player.new
  game = Game.new(Board.create_grid, player)
  game.play
end
