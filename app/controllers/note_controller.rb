get "/notes/new" do
	render_view :"notes/new"
end

get "/notes/:id" do
	@note = Note.find(params[:id])
	render_view :note_page
end


post '/notes' do
	@note = Note.create(params[:note])
	if @note 
		redirect '/'
	else
		@errors = @note.errors.full_messages
		render_view :"notes/new"
	end
end

put '/notes/:id' do
	@note = Note.find(params[:id])
	@note.update(params[:note])
	@note.save
	redirect '/notes/'+params[:id]
end 

delete '/notes/:id' do
	@note = Note.find(params[:id])
	@note.destroy
	redirect '/'
end