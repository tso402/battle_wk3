require 'game'

describe Game do
  it 'causes a player to be damaged when attacked' do
    game = Game.new('Jim', 'Jo')
    player = game.player_two
    expect { game.attack }.to change{player.hit_points}.by -10
  end

  it "initializes with two instances of Player" do
    game = Game.new("Hoju", "Mojo")
    expect(game.player_one.name).to eq('Hoju')
  end

  it 'changes turn to player 2 after player 1 has attacked' do
    game = Game.new("Hoju", "Mojo")
    player = game.player_two
    expect { game.attack }.to change{game.turn}.from(game.player_one).to(game.player_two)
  end

  it 'the player that is attacked is the opposite of the @turn value' do
    game = Game.new("Hoju", "Mojo")
    game.attack
    expect(game.turn).to eq game.player_two
  end
end
