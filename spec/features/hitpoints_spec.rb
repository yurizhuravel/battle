require 'spec_helper'

feature 'Hitpoints' do
  scenario "Player2's hitpoints are visible" do
    sign_in_and_play
    expect(page).to have_content("Luke 100hp")
  end

  scenario "Player1's hitpoints are visible" do
    sign_in_and_play
    expect(page).to have_content("Jess 100hp")
  end

end
