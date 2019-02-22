def sign_in_and_play
  visit('/')
  fill_in :name_one, with: 'Jimmy'
  fill_in :name_two, with: 'Hoju'
  click_button 'Submit'
end

def attack_ouch
  click_button("Attack")
  click_button("Ouch")
end

def lose_test
  10.times do
    attack_ouch
  end
end
