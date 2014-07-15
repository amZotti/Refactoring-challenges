require './deck.rb'

class Game
  
  CARDS_PER_HAND = 5
  
  def initialize(full_deck)
    @full_deck = full_deck
    @num_of_hands = 4
    @hands = {}
 end

  def deal_cards
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
    puts 
    puts "Player #{hand + 1}"
    puts "--------"
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
    @full_deck.pop(CARDS_PER_HAND)
  end
end
