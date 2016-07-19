require './app.rb'

feature 'Player names', :type => :feature do
  scenario "Players enter their names" do
    visit ('/')
    fill_in "player_1", :with => "Dan"
    fill_in "player_2", :with => "Yuri"
    click_button "Submit names"
    expect(page).to have_text("Dan vs. Yuri")
  end
end
