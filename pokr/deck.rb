class Deck

  CARD_VALUES = ["2", "3", "4", "5", "6", "7", "8", "9", "T", "J", "Q", "K"]
  CARD_SUITS = ["C", "D", "H", "S"]
  def initialize
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
    CARD_SUITS.each do |suit|
      CARD_VALUES.each do |value|
        @full_deck << value + suit
      end
    end
  end
end

