require 'deck'
require 'rspec'

describe Deck do
  subject(:deck) { Deck.new }
  describe '#initialize' do
    it "Initializes an array of 52 length" do
      expect(deck.deck_cards.length).to eq(52)
    end
  end

  describe '::make_deck' do
    it "Creates an array of 52 cards" do
      expect(deck.deck_cards.all? { |card| card.is_a?(Card) } ).to eq(true)
    end

    it "create 13 of hearts" do
      expect(deck.deck_cards.count { |card| card.suit == :heart} ).to eq(13)
    end

    it "create 13 of diamonds" do
      expect(deck.deck_cards.count { |card| card.suit == :diamond} ).to eq(13)
    end

    it "create 13 of spade" do
      expect(deck.deck_cards.count { |card| card.suit == :spade} ).to eq(13)
    end

    it "create 13 of club" do
      expect(deck.deck_cards.count { |card| card.suit == :club} ).to eq(13)
    end

    it "creates the right amount of individual cards" do
      expect(deck.deck_cards.map { |card| card.value}.inject(:+)).to eq(416)
    end
  end

  describe '#shuffle!' do
    it "shuffles the deck" do
      expect_any_instance_of(Array).to receive(:shuffle!)
      deck.shuffle!
    end
  end

end
