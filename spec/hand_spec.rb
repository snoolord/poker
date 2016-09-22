require 'rspec'
require 'byebug'
require 'hand'
describe Hand do
  let(:card1) { double("card1", :value => 2, :suit => :heart}
  let(:card2) { double("card2", :value => 5, :suit => :diamond)}
  let(:card3) { double("card3", :value => 5)}
  let(:flush) { double("flush", :cards => [:heart, :heart, :heart, :heart, :heart])}
  cards = [card1, card2]
  subject(:hand) { Hand.new(cards) }
  describe '#initialize' do
    it 'begins a hand with 5 Card objects' do
      expect(hand.cards.count { |card| card.is_a?(Card) }.to eq(5)
    end
  end
  
  # describe '::draw_hand' do
  #   it 'draws the top five cards of the deck' do
  #
  #   end
  end
end
