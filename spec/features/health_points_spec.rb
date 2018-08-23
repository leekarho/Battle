feature 'health points' do
  scenario 'health points reduce when attacked' do
    sign_in_and_play
    click_button 'attack'
    expect(page).to have_content("samir has: 90hp left")
    expect(page).not_to have_content("samir has: 100hp left")
  end
end
