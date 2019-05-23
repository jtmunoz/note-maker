require "sinatra"
require "sinatra/activerecord"
require "./models.rb"

set :database, "sqlite3:notemakerdb.sqlite3"

get '/' do
	"Hello World"
end