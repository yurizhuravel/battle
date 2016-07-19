require './app.rb'

feature 'Attack player' do
  scenario "Player attacks" do
    sign_in_and_play
    click_link "Attack!!"
    expect(page).to have_content("Player attacked!")
  end
end
