require 'card'

describe Card do
  subject(:card) { Card.new('Q', 'spades') }

  describe '#flip' do
    it 'does not reveal attributes upon init' do
      expect{card.rank}.to raise_error(RuntimeError, 'No peeking!')
      expect{card.suit}.to raise_error(RuntimeError, 'No peeking!')
      expect{card.color}.to raise_error(RuntimeError, 'No peeking!')
    end

    it 'reveals attributes when flipped' do
      card.flip
      expect(card.rank).to eq('Q')
      expect(card.suit).to eq('spades')
      expect(card.color).to eq('black')
    end
  end


  describe '#match?' do
    it 'raises error when arguments are invalid' do
      expect{card.match?(1,1)}.to raise_error(ArgumentError)
    end

    it 'returns accurate boolean when arguments are correct' do
      expect(card.match?('K', 'hearts')).to be false
      expect(card.match?('Q', 'spades')).to be true
    end
  end
end
