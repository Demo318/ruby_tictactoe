require 'rspec'

require_relative '../lib/end_game.rb'
require_relative '../lib/board.rb'

describe EndGame do

  # moc up pos_arr (position arrays)
  let(:board) { Board.new }

  describe '.get_endgame_combinations' do
    context 'passed board.position_arr' do
      it 'returns Array' do
        expect(get_endgame_combinations(board.position_arr).class).to eql(Array)
      end
    end

  end
  # pass position arrays into .get_endgame_combinations, confirm returns array
  # run get_ops and confirm proper array returns
  # run .victory? on all winning combinations
  # run .draw? on one or two drawing combinations


end
