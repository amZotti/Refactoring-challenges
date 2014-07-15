require './deck.rb'
require './game.rb'

class Play

  def new_deck
    deck = Deck.new
    @full_deck = deck.generate_deck
  end

  def new_game
    game = Game.new(@full_deck)
    game.deal_cards
  end
end

game = Play.new
game.new_deck
game.new_game
