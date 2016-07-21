require 'spec_helper'

feature 'Attack' do
  scenario "player1 attacks player2" do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content("Jess attacked Luke")
  end

  scenario "player 2's hitpoints fall" do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content("Luke has 90hp")
  end

  scenario 'player2 attacks player1' do
    sign_in_and_play
    click_button('Attack')
    click_button('Attack')
    expect(page).to have_content("Luke attacked Jess")
  end

end
