class GameRules

  def compute_winner
    case @user.current_move
    when "R"
      rock_rules
    when "S"
      scissor_rules
    when "P"
      paper_rules
    end
  end

  def rock_rules
    case @computer.current_move
    when "R"
      tied
    when "S"
      won
    when "P"
      lost
    end
  end

  def scissor_rules
    case @computer.current_move
    when "R"
      lost
    when "S"
      tied
    when "P"
      won
    end
  end

  def paper_rules
    case @computer.current_move
    when "R"
      won
    when "S"
      lost
    when "P"
      tied
    end
  end

  def won
    "won"
  end

  def lost
    "lost"
  end

  def tied
    "tied"
  end
end
