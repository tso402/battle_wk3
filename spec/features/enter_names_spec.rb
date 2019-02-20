require './app.rb'

describe 'home page visit', type: :feature do

  it 'submits names and sticks them on screen' do
    sign_in_and_play
    expect(page).to have_content 'James' && 'Luke'
  end
end
