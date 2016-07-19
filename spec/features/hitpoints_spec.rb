require 'spec_helper'

feature 'Hitpoints' do
  scenario "player1 views player2's hitpoints" do
    visit "/"
    fill_in :player_1_name, with: 'Jess'
    fill_in :player_2_name, with: 'Mali'
    click_button('submit')
    expect(page).to have_content("Mali 100hp")
  end
end
