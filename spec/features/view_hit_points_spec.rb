require './app.rb'

feature 'Hit points', :type => :feature do
  scenario "Players see each other's hit points" do
    sign_in_and_play
    expect(page).to have_text("Yuri: 60HP")
  end
end
