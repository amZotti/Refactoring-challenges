require './user_player.rb'
require './computer_player.rb'
require './game_rules.rb'
class Game < GameRules

  def initialize(user = UserPlayer.new, computer = ComputerPlayer.new)
    @user = user
    @computer = computer
    @game_result = ""
    @computer_mode = "default"
  end

  def set_computer_mode
    @computer.set_mode
  end

  def play_round
    set_computer_mode
    take_turns
    game_result
    show_game_result
  end

  def take_turns
    @user.new_move
    @computer.new_move
  end

  def game_result
    @game_result = compute_winner
  end

  def show_game_result
    puts "AI played #{@computer.current_move}"
    puts "User has #{@game_result} against AI"
  end
end

  game = Game.new
  game.play_round
