require './app.rb'

feature 'Game over' do
  scenario 'when player reaches 0hp or less' do
    sign_in_and_play
    allow(Kernel).to receive(:rand).and_return(60)
    click_button "Attack!!"
    expect(page).to have_content("Game over! Dan wins!")
  end
end
