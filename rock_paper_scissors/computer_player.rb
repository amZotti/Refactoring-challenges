require './player.rb'
class ComputerPlayer < Player

  def new_move
    @current_move = POSSIBLE_MOVES.sample
  end
end
