feature 'enter names' do
  scenario 'players see their names on screen after submitting in the form' do
    sign_in_and_play
    expect(page).to have_content 'Jimmy vs. Hoju'
  end

  scenario "player 1 can see player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content 'Jimmy: 60 HP' && 'Hoju: 60 HP'
  end
end
