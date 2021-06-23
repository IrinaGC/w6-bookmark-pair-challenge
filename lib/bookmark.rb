require 'pg'

class Bookmark

  def self.all
    con = PG.connect(dbname: 'bookmark_manager')
    rs = con.exec('SELECT * FROM bookmarks;')
    rs.map {|bookmarks| bookmarks['url']}
  end

end