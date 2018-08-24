feature 'switch turns' do
  scenario 'player 1 attacks' do
    sign_in_and_play
    expect(page).to have_content "kar-ho's turn"
  end

  scenario 'after player 1 attacks' do
    sign_in_and_play
    click_button 'attack'
    expect(page).not_to have_content "kar-ho's turn"
    expect(page).to have_content "samir's turn"
  end
end
