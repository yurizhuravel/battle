require 'spec_helper'

feature 'Attack' do
  scenario "player1 attacks player2" do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content("Player 1 attacked player 2")
  end

  scenario "player 2's hitpoints fall" do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content("Player 2 has 90hp")
  end
end
