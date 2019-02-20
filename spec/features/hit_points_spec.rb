require './app.rb'

describe '# Hitpoints', type: :feature do

  it 'shows the specified player names with hitpoints' do
    sign_in_and_play
    expect(page).to have_content 'James 60 Hitpoints' && 'Luke 60 Hitpoints'
  end

  it 'after a player is attacked their hp is reduced by 10' do
    sign_in_and_play
    attack_player_2
    click_link "Play"
    expect(page).not_to have_content 'Luke 60 Hitpoints'
    expect(page).to have_content 'James 60 Hitpoints' && 'Luke 50 Hitpoints'
  end
end