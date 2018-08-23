
feature 'entering name' do
  scenario 'Players can fill in their names in a form' do
    sign_in_and_play
    expect(page).to have_content 'kar-ho vs. samir'
  end
end

feature "see player2's HP" do
  scenario "see player2's HP" do
    sign_in_and_play
    expect(page).to have_content 'samir HP: 100'
  end
end
