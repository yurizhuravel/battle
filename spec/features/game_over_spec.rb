require 'spec_helper'

  context "a player's HP reaches 0" do
    scenario "player1 attacks player2 and their HP reaches 0" do
      sign_in_and_play
      19.times {click_button "Attack"}
      expect(page).to(have_content("GAME OVER - JESS WINS"))
    end

    scenario "there is a button to restart the game" do
      sign_in_and_play
      19.times {click_button "Attack"}
      click_button "Play Again"
      expect(page).to(have_content("Sign in to play"))
    end
  end
