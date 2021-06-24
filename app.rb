require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/test' do
    'test page'
  end

  get '/add_bm' do
    erb :add_bm
  end
  
  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  post '/bookmarks' do
    @new_bookmark = params[:new_bookmark]
    Bookmark.create(@new_bookmark)
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
