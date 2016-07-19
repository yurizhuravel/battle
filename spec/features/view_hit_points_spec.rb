require './app.rb'

feature 'Hit points', :type => :feature do
  scenario "Players see each other's hit points" do
    visit ('/')
    fill_in :player_1, :with => "Dan"
    fill_in :player_2, :with => "Yuri"
    click_button "Submit names"
    expect(page).to have_text("Yuri: 60HP")
  end
end
