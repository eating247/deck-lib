Card = Struct.new(:rank, :suit)

class Deck
  RANKS = %w(A 2 3 4 5 6 7 8 9 10 J Q K).freeze
  SUITS = %w(spades hearts diamonds clubs).freeze

  def initialize(deck=nil)
    @deck = deck ? deck : new_deck
  end

  def new_deck
    deck = RANKS.product(SUITS)
    deck.map { |rank, suit| Card.new(rank, suit) }
  end

  def shuffle
    @deck.shuffle
  end

  def draw(num=1)
    cards = []
    num.times {cards << @deck.pop}
    cards
  end
end
