class Player
  attr_reader :name, :team

  @@player_count = 0
  def initialize ()
    puts "Please enter the name for Player #{@@player_count + 1}."
    @name = gets.chomp
    if @@player_count < 1
      @team = "x"
      @@player_count += 1
    else
      @team = "o"
      @@player_count = 0
    end
    puts "Welcome, #{@name}. You will be playing the #{@team.upcase}'s.'"
  end

end
