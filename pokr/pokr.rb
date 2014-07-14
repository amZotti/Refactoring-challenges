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
        @full_deck << value + suite
      end
    end
  end
end

class DrawHands
  def initialize(deck_object = Deck.new)
    @full_deck = deck_object.full_deck
    @num_of_hands = 4
    @hands = {}
    assign_cards_to_hands
    display_hands
  end
  private

  def display_cards(hand)
    @hands[hand].each do |card|
      puts card
    end
  end

  def display_player_header(hand)
    puts "\nPlayer #{hand + 1}\n--------"
  end


  def display_hands
    @num_of_hands.times do |hand|
      display_player_header(hand)
      display_cards(hand)
    end
  end

  def assign_cards_to_hands
    @num_of_hands.times { |num| @hands[num] = get_cards }
  end

  def get_cards
    cards = []
    cards_per_hand = 5
    cards_per_hand.times{ cards << @full_deck.pop }
    cards
  end
end

DrawHands.new
