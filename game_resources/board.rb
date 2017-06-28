require_relative 'board_position.rb'

class Board
  attr_accessor :pos_one_one, :pos_one_two, :pos_one_three,
                :pos_two_one, :pos_two_two, :pos_two_three,
                :pos_three_one, :pos_three_two, :pos_three_three,
                :position_arr, :empty_positions, :filled_positions

  def initialize
    @pos_one_one = BoardPosition.new(1,1)
    @pos_one_two = BoardPosition.new(1,2)
    @pos_one_three = BoardPosition.new(1,3)
    @pos_two_one = BoardPosition.new(2,1)
    @pos_two_two = BoardPosition.new(2,2)
    @pos_two_three = BoardPosition.new(2,3)
    @pos_three_one = BoardPosition.new(3,1)
    @pos_three_two = BoardPosition.new(3,2)
    @pos_three_three = BoardPosition.new(3,3)
    @empty_positions = Array.new
    @filled_positions = Array.new
    @position_arr = [@pos_one_one, @pos_one_two, @pos_one_three, @pos_two_one, @pos_two_two, @pos_two_three, @pos_three_one, @pos_three_two, @pos_three_three]
    @position_arr.each { |item| @empty_positions << item }
  end

  def draw_board
    #top row
    puts "#{draw_row_divider}"
    puts "#{draw_column_divider} #{pos_one_one.draw_top} #{draw_column_divider} #{pos_one_two.draw_top} #{draw_column_divider} #{pos_one_three.draw_top} #{draw_column_divider}"
    puts "#{draw_column_divider} #{pos_one_one.draw_bottom} #{draw_column_divider} #{pos_one_two.draw_bottom} #{draw_column_divider} #{pos_one_three.draw_bottom} #{draw_column_divider}"
    #middle row
    puts "#{draw_row_divider}"
    puts "#{draw_column_divider} #{pos_two_one.draw_top} #{draw_column_divider} #{pos_two_two.draw_top} #{draw_column_divider} #{pos_two_three.draw_top} #{draw_column_divider}"
    puts "#{draw_column_divider} #{pos_two_one.draw_bottom} #{draw_column_divider} #{pos_two_two.draw_bottom} #{draw_column_divider} #{pos_two_three.draw_bottom} #{draw_column_divider}"
    puts "#{draw_row_divider}"
    #bottom row
    puts "#{draw_column_divider} #{pos_three_one.draw_top} #{draw_column_divider} #{pos_three_two.draw_top} #{draw_column_divider} #{pos_three_three.draw_top} #{draw_column_divider}"
    puts "#{draw_column_divider} #{pos_three_one.draw_bottom} #{draw_column_divider} #{pos_three_two.draw_bottom} #{draw_column_divider} #{pos_three_three.draw_bottom} #{draw_column_divider}"
    puts "#{draw_row_divider}"
  end

  private
  def draw_column_divider
    "|"
  end

  def draw_row_divider
    "-------------------"
  end
end
