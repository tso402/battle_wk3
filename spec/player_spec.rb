require 'player.rb'

describe Player do
  it 'returns its own name' do
    player = Player.new('Jeffray')
    expect(player.name).to eq('Jeffray')
  end

  it "checks a player's hit points" do
    player = Player.new('Jeffray')
    expect(player.hit_points).to eq(60)
  end

  it "player's hit points are decreased after an attack" do
    player = Player.new('Jeffray')
    player.take_damage
    expect(player.hit_points).to eq(50)
  end
end
