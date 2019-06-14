get "/notes/new" do
	erb :"notes/new"
end

get "/notes/:id" do
	@note = Note.find(params[:id])
	erb :note_page
end


post '/notes' do
	@note = Note.create(title: params[:note][:title], body: params[:note][:body])
	
	redirect '/'
end

put '/notes/:id' do
	@note = Note.find(params[:id])
	@note.update(title: params[:note][:title], body: params[:note][:body])
	@note.save
	redirect '/notes/'+params[:id]
end 

delete '/notes/:id' do
	@note = Note.find(params[:id])
	@note.destroy
	redirect '/'
end