require_relative 'lib/game.rb'

game = Game.new
game.new_players
loop do
  game.new_turn
  break unless game.new_game?
end