require './app.rb'

feature 'Attack player' do
  scenario "Player attacks" do
    sign_in_and_play
    click_button "Attack!!"
    expect(page).to have_content("Dan attacked Yuri")
  end
end
