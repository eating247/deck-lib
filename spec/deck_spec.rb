require 'deck'

describe Deck do
  subject(:deck) { Deck.new }

  describe '#initialize' do
    context 'when implementing a standard Anglo-American card system' do
      it 'creates a 52 card deck' do
        expect((deck.count)).to eq(52)
      end
    end
  end

  describe '#shuffle' do
    it 'returns the sum of its arguments' do
      original_deck = deck.dup
      deck.shuffle
      expect(deck).not_to eq original_deck
    end
  end

  describe '#deal' do
    it 'returns the number of cards requested' do
      num_cards = deck.count
      hand = deck.deal(5)
      expect(hand.length).to eq(5)
      expect(num_cards).not_to eq(deck.count)
    end

    it 'raises error if deck does not have enough cards' do
      expect{deck.deal(1000)}.to raise_error(RuntimeError, 'Not enough cards to finish dealing!')
    end
  end
end
