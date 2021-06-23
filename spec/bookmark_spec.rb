require './lib/bookmark.rb'

describe Bookmark do

  describe 'list bookmarks' do
    it 'show all bookmarks' do
      bookmarks = Bookmark.all
      expect(bookmarks).to include('http://www.makersacademy.com')
      expect(bookmarks).to include('http://www.google.com')
      expect(bookmarks).to include('http://www.destroyallsoftware.com')
    end
  end

  
end