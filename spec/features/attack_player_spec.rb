require './app.rb'

describe '# Attack Player', type: :feature do

  it 'Choose to attack a player and get a confirmation' do
    sign_in_and_play
    attack_player_2
    expect(page).to have_content 'Luke was attacked by James!!!'
  end
end

