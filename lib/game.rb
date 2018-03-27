require_relative 'end_game.rb'
require_relative 'player.rb'
require_relative 'board.rb'

class Game
  attr_accessor :board, :current_player, :other_player
  include EndGame

  def initialize
    @board = Board.new
    @board.draw_board
  end

  def new_players
    @player1 = Player.new
    @player1.get_player_name
    @player2 = Player.new
    @player2.get_player_name
    @current_player = @player1
    @other_player = @player2
  end

  def new_turn
    loop do
      choose_square
      @board.draw_board
      get_endgame_combinations(@board.position_arr)
      if victory? == true
        puts "Congratulations, #{@current_player.name}, you are the victor!"
        break
      elsif draw?(@current_player, @other_player) == true
        puts "This game has ended in a draw."
        break
      else
        update_current_player
      end
    end
  end

  def update_current_player
    case @current_player
    when @player1
      @current_player, @other_player = @player2, @player1
    when @player2
      @current_player, @other_player = @player1, @player2
    end
  end

  def get_square
    puts "#{@current_player.name}, in which square would you like to place your '#{@current_player.team.upcase}'?"
    square = nil
    while square == nil do
      num = gets.chomp
      tmp_square = @board.position_arr[num.to_i - 1]
      unless num.length == 1 && @board.empty_positions.include?(tmp_square) && num.to_i > 0
        puts "That entry is not valid."
      else
        square = tmp_square
      end
    end
    square
  end

  def choose_square
    chosen_square = get_square
    @board.empty_positions.delete(chosen_square)
    @board.filled_positions << chosen_square
    chosen_square.assignment = @current_player.team
  end

  def new_game?
    loop do
      puts "Would you like to start a new game? (y/n)"
      start = gets.chomp
      if "y" == start
        return true
      elsif "n" == start
        return false
      else
        next
      end
    end
  end

end
