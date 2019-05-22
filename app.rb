require "sinatra"
require "sinatra/activerecord"
require "./models.rb"

set :database, "sqlite3:notemakerdb.sqlite3"