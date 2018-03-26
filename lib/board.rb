require_relative 'board_position.rb'

class Board
  attr_accessor :pos_one, :pos_two, :pos_three,
                :pos_four, :pos_five, :pos_six,
                :pos_seven, :pos_eight, :pos_nine,
                :position_arr, :empty_positions, :filled_positions

  def initialize
    @pos_one = BoardPosition.new
    @pos_two = BoardPosition.new
    @pos_three = BoardPosition.new
    @pos_four = BoardPosition.new
    @pos_five = BoardPosition.new
    @pos_six = BoardPosition.new
    @pos_seven = BoardPosition.new
    @pos_eight = BoardPosition.new
    @pos_nine = BoardPosition.new
    @filled_positions = Array.new
    @position_arr = [@pos_one, @pos_two, @pos_three, @pos_four, @pos_five, @pos_six, @pos_seven, @pos_eight, @pos_nine]
    @empty_positions = Array.new
    @position_arr.each { |item| @empty_positions << item }
  end

  def draw_board
    #top row
    puts "#{draw_row_divider}"
    puts "#{draw_column_divider} #{@pos_one.draw_top} #{draw_column_divider} #{@pos_two.draw_top} #{draw_column_divider} #{@pos_three.draw_top} #{draw_column_divider}"
    puts "#{draw_column_divider} #{@pos_one.draw_bottom} #{draw_column_divider} #{@pos_two.draw_bottom} #{draw_column_divider} #{@pos_three.draw_bottom} #{draw_column_divider}"
    #middle row
    puts "#{draw_row_divider}"
    puts "#{draw_column_divider} #{@pos_four.draw_top} #{draw_column_divider} #{@pos_five.draw_top} #{draw_column_divider} #{@pos_six.draw_top} #{draw_column_divider}"
    puts "#{draw_column_divider} #{@pos_four.draw_bottom} #{draw_column_divider} #{@pos_five.draw_bottom} #{draw_column_divider} #{@pos_six.draw_bottom} #{draw_column_divider}"
    puts "#{draw_row_divider}"
    #bottom row
    puts "#{draw_column_divider} #{@pos_seven.draw_top} #{draw_column_divider} #{@pos_eight.draw_top} #{draw_column_divider} #{@pos_nine.draw_top} #{draw_column_divider}"
    puts "#{draw_column_divider} #{@pos_seven.draw_bottom} #{draw_column_divider} #{@pos_eight.draw_bottom} #{draw_column_divider} #{@pos_nine.draw_bottom} #{draw_column_divider}"
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
