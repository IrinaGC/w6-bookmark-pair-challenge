require './lib/bookmark.rb'

describe Bookmark do

  it 'shows all bookmarks array' do
    bookmark = Bookmark.new
    expect(bookmark.all).to eq([{title:"GitHub", url:"https://github.com/"}])
  end

end