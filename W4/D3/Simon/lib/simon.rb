class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @seq = []
    @game_over = false
  end

  def play
    until game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    if !game_over
      show_sequence
      require_sequence ? round_success_message : game_over_message
      self.sequence_length += 1
    end
    
  end

  def show_sequence
    add_random_color
  end

  def require_sequence
    puts "Enter the sequence of colors, separated by spaces"
    input = gets.chomp.split(" ")
    if input != self.seq
      self.game_over = true
      return false
    end
    return true
  end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message
    puts "Great job! Here's the next sequence:"
  end

  def game_over_message
    puts "Aw too bad, ya lost."
  end

  def reset_game
    self.sequence_length = 1
    self.game_over = false
    self.seq = []


  end
end
