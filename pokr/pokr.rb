class Deck

  def initialize
    @card_values = ["2", "3", "4", "5", "6", "7", "8", "9", "T", "J", "Q", "K"]
    @card_suites = ["C", "D", "H", "S"]
    @full_deck = []
    generate_deck
  end

  attr_accessor :full_deck
  
  def shuffle_cards
    @full_deck.shuffle!
  end

  private

  def generate_deck
    create_cards
    shuffle_cards
  end

  def create_cards
    @card_suites.each do |suite|
      @card_values.each do |value|
        @full_deck << suite + value
      end
    end
  end
end

my_d = Deck.new()
puts my_d.full_deck
