def sign_in_and_play
  visit ('/')
  fill_in "player_1_name", :with => "Dan"
  fill_in "player_2_name", :with => "Yuri"
  click_button "Submit names"
end
