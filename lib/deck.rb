require_relative 'card'
class Deck
  attr_accessor :deck_cards

  def initialize
    @deck_cards = Deck.make_deck
  end

  SUITS = [:heart, :club, :spade, :diamond]

  def self.make_deck
    cards = ((2..14).to_a) * 4
    count = 0
    suit_index = 0
    return_cards = []
    cards.each do |card_value|
      return_cards << Card.new(card_value, SUITS[suit_index])
      count += 1
      if count == 13
        suit_index += 1
        count = 0
      end
    end
    return_cards
  end

  def shuffle!
    @deck_cards.shuffle!
  end

end
