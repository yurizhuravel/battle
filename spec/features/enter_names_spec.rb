require './app.rb'

feature 'Player names', :type => :feature do
  scenario "Players enter their names" do
    sign_in_and_play
    expect(page).to have_text("Dan vs. Yuri")
  end
end
