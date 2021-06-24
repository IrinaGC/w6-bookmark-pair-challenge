require 'pg'

feature BookmarkManager do

  scenario 'view all bookmarks' do

    con = PG.connect(dbname: 'bookmark_manager_test')
      con.exec("INSERT INTO bookmarks VALUES (2, 'http://www.destroyallsoftware.com')")
      con.exec("INSERT INTO bookmarks VALUES (1, 'http://www.makersacademy.com');")
      con.exec("INSERT INTO bookmarks VALUES (3, 'http://www.google.com');")


    visit '/bookmarks'
      expect(page).to have_content 'http://www.makersacademy.com'
      expect(page).to have_content 'http://www.google.com'
      expect(page).to have_content 'http://www.destroyallsoftware.com'
      
  end

  scenario 'add new bookmark to the list' do
    visit '/add_bm'
    fill_in 'new_bookmark', with: 'http://www.github.com'
    click_button('Submit')
    expect(page).to have_content 'http://www.github.com'
  end



end