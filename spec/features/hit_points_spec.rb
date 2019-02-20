require './app.rb'

describe '# Hitpoints', type: :feature do

  it 'shows the specified player names with hitpoints' do
    sign_in_and_play
    expect(page).to have_content 'James 60 Hitpoints' && 'Luke 60 Hitpoints'
  end
end