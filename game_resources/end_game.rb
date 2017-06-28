module EndGame
  def get_endgame_combinations(pos_arr)
    @@winning_ways = [[pos_arr[0], pos_arr[1], pos_arr[2]],
                      [pos_arr[3], pos_arr[4], pos_arr[5]],
                      [pos_arr[6], pos_arr[7], pos_arr[8]],
                      [pos_arr[0], pos_arr[3], pos_arr[6]],
                      [pos_arr[1], pos_arr[4], pos_arr[7]],
                      [pos_arr[2], pos_arr[5], pos_arr[8]],
                      [pos_arr[0], pos_arr[4], pos_arr[8]],
                      [pos_arr[2], pos_arr[4], pos_arr[6]]]
  end

  def get_ops(int)
    op_one = @@winning_ways[int][0].assignment
    op_two = @@winning_ways[int][1].assignment
    op_three = @@winning_ways[int][2].assignment
    [op_one, op_two, op_three]
  end

  def victory?
    won = false

    @@winning_ways.length.times do |int|
      ops = get_ops(int)
      unless ops.include?("blank")
        if ops[0] == ops[1]&& ops[1] == ops[2]
          won = true
        end
      end
    end

    won
  end

  def draw?(player, other_player)
    draw = true

    @@winning_ways.length.times do |int|
      ops = get_ops(int)
      blanks = 0

      ops.each do |op|
        blanks += 1 if op == "blank"
      end
      if blanks > 1
        draw = false
      elsif blanks == 1 && (ops.count(player.team) == 2 || ops.count(other_player.team) == 2)
        draw = false
      end
    end

    draw
  end
end
