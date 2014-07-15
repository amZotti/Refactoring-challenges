require './player.rb'
class ComputerPlayer < Player

  MESSAGE = "Hello! Please type in a difficulty from the lists below!\nSelect 0 for default mode\nselect 1 for impossible mode\nselect 2 for easy mode"
  POSSIBLE_MODES = [0, 1, 2]

  def initialize
    @mode = -1
  end

  def new_move
    @current_move = POSSIBLE_MOVES.sample
  end

  def set_mode
    users_mode_selection
  end

  def prompt_user_for_selection
    puts MESSAGE
  end

  def users_mode_selection
    while !(POSSIBLE_MODES.include?(@mode))
      prompt_user_for_selection
      @mode = gets.chomp.to_i
    end
  end
end
