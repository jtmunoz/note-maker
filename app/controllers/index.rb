get '/' do
	@notes = Note.all.order('created_at DESC')
	erb :index
end

get "/note/:id" do
	@note = Note.find(params[:id])
	erb :note_page
end

post '/note' do
	puts params.inspect
	puts params[:note][:title]
	puts params[:note][:body]
	puts "HERE" * 10
	@note = Note.create(title: params[:note][:title], body: params[:note][:body])
	redirect '/'
end

put '/note/:id' do
	@note = Note.find(params[:id])
	@note.update(title: params[:note][:title], body: params[:note][:body])
	@note.save
	redirect '/note/'+params[:id]
end 

delete '/note/:id' do
	@note = Note.find(params[:id])
	@note.destroy
	redirect '/'
end