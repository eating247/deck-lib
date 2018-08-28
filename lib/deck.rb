require_relative './deck_configuration'
require_relative './card'

class Deck
  def initialize
    @cards = new_deck
  end

  def shuffle
    @cards.shuffle
  end

  def deal(num_cards=5)
    raise 'Not enough cards to finish dealing!' if num_cards > count
    @cards.pop(num_cards)
  end

  def count
    @cards.size
  end

  private

  def new_deck
    deck = DeckConfiguration::RANKS.product(DeckConfiguration::SUITS)
    deck.map { |rank, suit| Card.new(rank, suit) }
  end
end
