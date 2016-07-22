require './app.rb'

feature 'Taking turns' do
  scenario 'starts with a player 1 turn' do
    sign_in_and_play
    expect(page).to have_text("Dan's turn")
  end

  scenario 'turn passes to player 2 after attack' do
    sign_in_and_play
    click_button "Attack!!"
    click_button "Next turn"
    expect(page).to have_text("Yuri's turn")
  end
end
