require 'rspec'

require_relative '../lib/game.rb'
require_relative '../lib/board.rb'

describe Game do

  # moc up pos_arr (position arrays)
  let(:game) { Game.new }

  describe '.get_endgame_combinations' do
    context 'passed board.position_arr' do
      it 'returns Array' do
        expect(game.get_endgame_combinations(game.board.position_arr).class).to eql(Array)
      end
    end
  end

  describe '#victory?' do

    context 'when left-column matches' do
      before do
        game.board.position_arr[0].assignment = 'x'
        game.board.position_arr[3].assignment = 'x'
        game.board.position_arr[6].assignment = 'x'
        game.get_endgame_combinations(game.board.position_arr)
      end
      it { expect(game.victory?).to eql(true) }
    end

    context 'when center-column matches' do
      before do
        game.board.position_arr[1].assignment = 'x'
        game.board.position_arr[4].assignment = 'x'
        game.board.position_arr[7].assignment = 'x'
        game.get_endgame_combinations(game.board.position_arr)
      end
      it { expect(game.victory?).to eql(true) }
    end

    context 'when right-column matches' do
      before do
        game.board.position_arr[2].assignment = 'x'
        game.board.position_arr[5].assignment = 'x'
        game.board.position_arr[8].assignment = 'x'
        game.get_endgame_combinations(game.board.position_arr)
      end
      it { expect(game.victory?).to eql(true) }
    end

    context 'when top-row matches' do
      before do
        game.board.position_arr[0].assignment = 'x'
        game.board.position_arr[1].assignment = 'x'
        game.board.position_arr[2].assignment = 'x'
        game.get_endgame_combinations(game.board.position_arr)
      end
      it { expect(game.victory?).to eql(true) }
    end

    context 'when center-row matches' do
      before do
        game.board.position_arr[3].assignment = 'x'
        game.board.position_arr[4].assignment = 'x'
        game.board.position_arr[5].assignment = 'x'
        game.get_endgame_combinations(game.board.position_arr)
      end
      it { expect(game.victory?).to eql(true) }
    end

    context 'when bottom-row matches' do
      before do
        game.board.position_arr[6].assignment = 'x'
        game.board.position_arr[7].assignment = 'x'
        game.board.position_arr[8].assignment = 'x'
        game.get_endgame_combinations(game.board.position_arr)
      end
      it { expect(game.victory?).to eql(true) }
    end

    context 'when left-to-right diagonal matches' do
      before do
        game.board.position_arr[0].assignment = 'x'
        game.board.position_arr[4].assignment = 'x'
        game.board.position_arr[8].assignment = 'x'
        game.get_endgame_combinations(game.board.position_arr)
      end
      it { expect(game.victory?).to eql(true) }
    end

    context 'when right-to-left diagonal matches' do
      before do
        game.board.position_arr[2].assignment = 'x'
        game.board.position_arr[4].assignment = 'x'
        game.board.position_arr[6].assignment = 'x'
        game.get_endgame_combinations(game.board.position_arr)
      end
      it { expect(game.victory?).to eql(true) }
    end

  end

  # run .draw? on one or two drawing combinations


end
