class Player
  attr_reader :name, :team

  @@player_count = 0
  def initialize ()
    if @@player_count < 1
      @team = "x"
      @@player_count += 1
    else
      @team = "o"
      @@player_count = 0
    end
  end

  def get_player_name
    if name.nil?
      puts "Please enter the name for Player #{@@player_count + 1}."
      @name = gets.chomp
    end
    puts "Welcome, #{@name}. You will be playing the #{@team.upcase}'s.'"
  end

end
