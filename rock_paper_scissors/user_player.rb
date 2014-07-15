require './player.rb'

class UserPlayer < Player

  INPUT_MESSAGE_TO_PLAYER =  "Your move? (R/P/S, q to quit)"

  def initialize
    @move_is_valid = false
  end

  def new_move
    while !@move_is_valid
      display_input_message
      make_move
      check_move
    end
  end

  def make_move
    @current_move = gets.chomp
  end

  def valid_move?
    POSSIBLE_MOVES.include?(@current_move)
  end

  def display_input_message
    puts INPUT_MESSAGE_TO_PLAYER
  end

  def check_move
    if valid_move?
      @move_is_valid = true
    else
      puts "Incorrect! Enter a valid letter"
    end
  end

end
