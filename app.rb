require "sinatra"
require "sinatra/activerecord"
require "./models.rb"

set :database, "sqlite3:notemakerdb.sqlite3"

get '/' do
	@notes = Note.all
	erb :index
end

get "/note/:id" do
	@note = Note.find(params[:id])
	erb :note_page
end

post '/note' do
	@note = Note.create(title: params[:title], body: params[:body])
	redirect '/'
end

put '/note/:id' do
	@note = Note.find(params[:id])
	@note.update(title: params[:title], body: params[:body])
	@note.save
	redirect '/note/'+params[:id]
end 

delete '/note/:id' do
	puts "DELETING"
	@note = Note.find(params[:id])
	@note.destroy
	redirect '/'
end