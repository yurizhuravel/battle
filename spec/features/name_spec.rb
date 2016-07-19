require 'spec_helper'

feature 'Enter names' do
  scenario "User inputs their name" do
    visit "/"
    fill_in :player_1_name, with: 'Jess'
    fill_in :player_2_name, with: 'Mali'
    click_button('submit')
    expect(page).to have_content("Jess vs. Mali")
  end
end
