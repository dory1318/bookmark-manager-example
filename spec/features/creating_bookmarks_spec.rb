feature 'Adding a new bookmark' do
  scenario 'A user can add a bookmark to Bookmark Manager' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://testbookmark.com')
    click_button('Submit')

    expect(page).to have_content('http://testbookmark.com')
  end

  scenario 'A user cannot add an invalid bookmark' do
    visit('/bookmarks/new')
    fill_in('url', with: 'not a bookmark')
    click_button('Submit')

    expect(page).to have_content 'Please submit a valid URL'
  end
end
