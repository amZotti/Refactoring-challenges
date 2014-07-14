class Deck

  def initialize
    @card_values = ["2", "3", "4", "5", "6", "7", "8", "9", "T", "J", "Q", "K"]
    @card_suits = ["C", "D", "H", "S"]
    @full_deck = []
  end

  attr_reader :full_deck

  def shuffle_cards
    @full_deck.shuffle!
  end

  def generate_deck
    create_cards
    shuffle_cards
  end

  private

  def create_cards
    @card_suits.each do |suit|
      @card_values.each do |value|
        @full_deck << value + suit
      end
    end
  end
end

