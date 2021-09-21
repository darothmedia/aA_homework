require_relative "player"

class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @player1 = name1
    @player2 = name2
    @cups = Array.new(14) {Array.new}
    
    @cups[0..5].each {|cup| 4.times {cup << :stone}}
    @cups[7..12].each {|cup| 4.times {cup << :stone}}
    # p @board
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    if start_pos < 0 || start_pos > 12
      raise "Invalid starting cup"
    elsif @cups[start_pos].empty?
      raise "Starting cup is empty"
    end
  end

  def make_move(start_pos, current_player_name)
    i = start_pos
    
    until @cups[start_pos].empty?
      @cups[i] << @cups[start_pos].shift
      if (i < 12 && current_player_name == @player1) || (i < 5 && current_player_name == @player2)
        i += 1
      elsif i == 5 && current_player_name == @player2
        i += 2
      elsif (i > 6 && i < 13) && current_player_name == @player2
        i += 1
      else
        i = 0
      end
    end
    render
    next_turn(i)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    
    if @cups[ending_cup_idx].empty?
      return :switch
    elsif ending_cup_idx == 6 || ending_cup_idx == 13
      return :prompt
    else
      return ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cups[0..5].all? {|cup| cup.empty? } || @cups[7..12].all? {|cup| cup.empty? }
  end

  def winner
    win = @cups[6] <=> @cups[13]
    if win == 1
      return @player1
    elsif win == -1
      return @player2
    else
      return :draw
    end
  end
end
