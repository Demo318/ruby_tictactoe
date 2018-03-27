require_relative 'board_position.rb'

class Board
  attr_accessor :position_arr, :empty_positions, :filled_positions

  def initialize
    @filled_positions = []
    @position_arr = Array.new(9) { BoardPosition.new }
    @empty_positions = []
    @position_arr.each { |item| @empty_positions << item }
  end

  def draw_board
    #top row
    puts "#{draw_row_divider}"
    puts "#{draw_column_divider} #{@position_arr[0].draw_top} #{draw_column_divider} #{@position_arr[1].draw_top} #{draw_column_divider} #{@position_arr[2].draw_top} #{draw_column_divider}"
    puts "#{draw_column_divider} #{@position_arr[0].draw_bottom} #{draw_column_divider} #{@position_arr[1].draw_bottom} #{draw_column_divider} #{@position_arr[2].draw_bottom} #{draw_column_divider}"
    #middle row
    puts "#{draw_row_divider}"
    puts "#{draw_column_divider} #{@position_arr[3].draw_top} #{draw_column_divider} #{@position_arr[4].draw_top} #{draw_column_divider} #{@position_arr[5].draw_top} #{draw_column_divider}"
    puts "#{draw_column_divider} #{@position_arr[3].draw_bottom} #{draw_column_divider} #{@position_arr[4].draw_bottom} #{draw_column_divider} #{@position_arr[5].draw_bottom} #{draw_column_divider}"
    puts "#{draw_row_divider}"
    #bottom row
    puts "#{draw_column_divider} #{@position_arr[6].draw_top} #{draw_column_divider} #{@position_arr[7].draw_top} #{draw_column_divider} #{@position_arr[8].draw_top} #{draw_column_divider}"
    puts "#{draw_column_divider} #{@position_arr[6].draw_bottom} #{draw_column_divider} #{@position_arr[7].draw_bottom} #{draw_column_divider} #{@position_arr[8].draw_bottom} #{draw_column_divider}"
    puts "#{draw_row_divider}"
  end

  private

  def draw_column_divider
    '|'
  end

  def draw_row_divider
    '-------------------'
  end
end
