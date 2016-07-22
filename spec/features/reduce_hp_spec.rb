require './app.rb'

feature 'Reduce Hp' do
  scenario 'attack reduces second players HP by 10' do
    sign_in_and_play
    allow(Kernel).to receive(:rand).and_return(10)
    click_button "Attack!!"
    expect(page).to have_content("Yuri: 50HP")
  end
end
