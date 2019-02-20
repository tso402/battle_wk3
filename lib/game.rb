class Game
  attr_reader :player_1, :player_2
  def initialize(player1,player2)
    @player_1 = player1
    @player_2 = player2
  end

  def attack(defender)
    if defender == @player1
    @player_1.attacked
    else 
    @player_2.attacked
    end
  end
end