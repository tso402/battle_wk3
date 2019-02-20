require 'player'

describe Player do
  describe '#name method' do
    it 'Returns the player name' do
      player = Player.new("James")
      expect(player.name).to eq "James"
    end
  end
end