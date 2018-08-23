def sign_in_and_play
  visit('/')
  fill_in :player1, with: 'kar-ho'
  fill_in :player2, with: 'samir'
  click_button 'submit'
end
