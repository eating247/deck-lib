require_relative './deck_configuration'

class Card
  def initialize(rank, suit)
    @flipped = false
    @rank = rank
    @suit = suit
  end

  def rank
    check_flipped(@rank)
  end

  def suit
    check_flipped(@suit)
  end

  def color
    check_flipped(get_color)
  end

  def flip
    @flipped = !@flipped
  end

  def match?(rank, suit)
    validate_rank_and_suit(rank, suit)
    rank == @rank && suit == @suit
  end

  private

  def check_flipped(value)
    @flipped ? value : unflipped_error
  end

  def unflipped_error
    raise 'No peeking!'
  end

  def get_color
    # init here for memory considerations since
    # color isn't relevant in many games
    @color ||= ['spades', 'clubs'].include?(@suit) ? 'black' : 'red'
  end

  def validate_rank_and_suit(rank, suit)
    raise ArgumentError unless DeckConfiguration::RANKS.include?(rank) &&
      DeckConfiguration::SUITS.include?(suit)
  end
end
