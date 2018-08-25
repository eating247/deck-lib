Card = Struct.new(:value, :suit)

class Deck
  VALUES = %w(A 2 3 4 5 6 7 8 9 10 J Q K).freeze
  SUITS = %w(spades hearts diamonds clubs).freeze

  def initialize(deck=nil)
    @deck = deck ? deck : new_deck
  end

  def new_deck
    deck = VALUE.product(SUITS)
    deck.map { |value, suit| Card.new(value, suit) }.shuffle
  end

  def shuffle
    @deck.shuffle
  end
end
