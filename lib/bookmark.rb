require 'pg'

class Bookmark

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      con = PG.connect(dbname: 'bookmark_manager_test')
    else
      con = PG.connect(dbname: 'bookmark_manager')
    end

    rs = con.exec('SELECT * FROM bookmarks;')
    rs.map {|bookmarks| bookmarks['url']}
  end

  def self.create(new_bookmark)
    if ENV['ENVIRONMENT'] == 'test'
      con = PG.connect(dbname: 'bookmark_manager_test')
    else
      con = PG.connect(dbname: 'bookmark_manager')
    end
    
    con.exec("INSERT INTO bookmarks (url) VALUES ('#{new_bookmark}');")
  end
end