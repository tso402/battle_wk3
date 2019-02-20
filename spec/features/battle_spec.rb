require './app.rb'

describe 'home page visit', type: :feature do

  it 'submits names and sticks them on screen' do
    visit '/'
    fill_in 'name1', with: 'James'
    fill_in 'name2', with: 'Luke'
    click_button('Submit')
    expect(page).to have_content 'James' && 'Luke'
  end

  it 'shows the specified player names with hitpoints' do
    visit '/'
    fill_in 'name1', with: 'James'
    fill_in 'name2', with: 'Luke'
    click_button('Submit')
    expect(page).to have_content 'James 60 Hitpoints' && 'Luke 60 Hitpoints'
  end





end
