describe 'Switch turns' do

context 'seeing the current turn' do
  scenario 'at the start for the game' do
    sign_in_and_play
    expect(page).to have_content "Current Turn: Jess"
  end

  scenario 'after player1 attacks' do
    sign_in_and_play
    click_button('Attack')
    expect(page).not_to have_content "Current Turn: Jess"
    expect(page).to have_content "Current Turn: Luke"
  end
end

end
