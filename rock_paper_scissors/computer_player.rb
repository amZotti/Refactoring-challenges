require './player.rb'
class ComputerPlayer < Player

  MESSAGE = "Hello! Please type in a difficulty from the lists below!\nSelect 0 for default mode\nselect 1 for impossible mode\nselect 2 for easy mode"
  POSSIBLE_MODES = [0, 1, 2]

  def initialize
    @mode = -1
  end

  def new_move(users_current_move)
    @current_move = set_move(users_current_move)
  end

  def set_move(users_current_move)
    case @mode
    when 0
      default_mode
    when 1
      impossible_mode(users_current_move)
    when 2
      easy_mode(users_current_move)
    end
  end

  def default_mode
    POSSIBLE_MOVES.sample
  end

  def impossible_mode(users_current_move)
    case users_current_move
    when "R"
      "P"
    when "P"
      "S"
    when "S"
      "R"
    end
  end

  def easy_mode(users_current_move)
    case users_current_move
    when "R"
      "S"
    when "S"
      "P"
    when "P"
      "R"
    end
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
