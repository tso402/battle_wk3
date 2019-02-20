def sign_in_and_play
  visit '/'
    fill_in 'name1', with: 'James'
    fill_in 'name2', with: 'Luke'
    click_button('Submit')
end

def attack_player_1
  fill_in 'name', with: 'James'
  click_button('Submit')
end

def attack_player_2
  fill_in 'name', with: 'Luke'
  click_button('Submit')
end