require 'spec_helper'

feature 'Hitpoints' do
  scenario "player1 views player2's hitpoints" do
    sign_in_and_play
    expect(page).to have_content("Luke 100hp")
  end
end
