# feature 'Testing infrastructure' do
#   scenario 'Can run app and check page content' do
#     visit('/')
#     expect(page).to have_content 'Testing infrastructure working!'
#   end
# end

feature 'entering name' do
  scenario 'Players can fill in their names in a form' do
    visit('/')
    fill_in :player1, with: 'kar-ho'
    fill_in :player2, with: 'batman'
    click_button 'submit'
    expect(page).to have_content 'kar-ho vs. batman'
  end
end
