def sign_in_and_play
  visit '/'
    fill_in 'name1', with: 'James'
    fill_in 'name2', with: 'Luke'
    click_button('Submit')
end