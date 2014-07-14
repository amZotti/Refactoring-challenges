require './deck.rb'
require './start_game.rb'

class Play

  def new_deck
    deck = Deck.new
    @full_deck = deck.generate_deck
  end

  def new_game
    game = StartGame.new(@full_deck)
    game.deal_cards
  end
end

game = Play.new
game.new_deck
game.new_game
