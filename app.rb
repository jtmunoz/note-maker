require "sinatra"
require "sinatra/activerecord"
require "./models.rb"

set :database, "sqlite3:notemakerdb.sqlite3"

get '/' do
	@posts = Note.all
	erb :index
end