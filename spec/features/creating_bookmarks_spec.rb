feature 'Adding a new bookmark' do
  scenario 'A user can add a bookmark to Bookmark Manager' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://www.testbookmark.com')
    fill_in('title', with: 'Test Bookmark')
    click_button('Submit')

    expect(page).to have_link('Test Bookmark', href: 'http://www.testbookmark.com')
  end

  scenario 'A user cannot add an invalid bookmark' do
    visit('/bookmarks/new')
    fill_in('url', with: 'not a bookmark')
    click_button('Submit')

    expect(page).to have_content 'Please submit a valid URL'
  end
end
