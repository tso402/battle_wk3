class Game

  attr_reader :player_one, :player_two, :turn, :attacker

  def initialize(player1, player2)
    @player_one = Player.new(player1)
    @player_two = Player.new(player2)
    @turn = @player_one
    @attacker = @player_one
  end

  def attack
    if @turn == @player_one
      @player_two.take_damage
      @turn = @player_two
      @attacker = @player_one
    elsif @turn == @player_two
      @player_one.take_damage
      @turn = @player_one
      @attacker = @player_two
    else fail "That isn't a valid player"
    end
  end

end
