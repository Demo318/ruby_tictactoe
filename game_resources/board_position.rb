class BoardPosition
  attr_reader :row, :column, :number
  attr_accessor :assignment

  @@spaces = 0
  def initialize (row, column)
    @row = row
    @column = column
    @assignment = "blank"
    @number = @@spaces + 1
    @@spaces += 1
    @@spaces = 0 if @@spaces == 9
  end

  def draw
    puts draw_top
    puts draw_bottom
  end

  def draw_top
    case @assignment
    when "x"
      "\\ /"
    when "o"
      "/ \\"
    else
      "#{number}  "
    end
  end

  def draw_bottom
    case @assignment
    when "x"
      "/ \\"
    when "o"
      "\\_/"
    else
      "   "
    end
  end
end
