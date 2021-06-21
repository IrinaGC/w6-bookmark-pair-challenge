feature BookmarkManager do

scenario 'view all bookmarks' do
  visit '/bookmarks'
  expect(page).to have_content "All Bookmarks"
end


end