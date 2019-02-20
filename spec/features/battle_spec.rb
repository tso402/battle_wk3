require './app.rb'

describe 'home page visit', type: :feature do

  it 'submits names and sticks them on screen' do
    sign_in_and_play
    expect(page).to have_content 'James' && 'Luke'
  end

  it 'shows the specified player names with hitpoints' do
    sign_in_and_play
    expect(page).to have_content 'James 60 Hitpoints' && 'Luke 60 Hitpoints'
  end





end
