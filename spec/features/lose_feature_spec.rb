feature 'Player loses once hit points reach 0' do
  scenario 'Player 2 loses' do
    sign_in_and_play
    lose_test
    click_button('Attack')
    click_button('Finish')
    expect(page).to have_content "Hoju is dead, Jimmy wins!!!!! D:"
  end
end
