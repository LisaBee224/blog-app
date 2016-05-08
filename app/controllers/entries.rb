get '/entries/index' do
  @entries = Entry.all
  @tags = Tag.all
  erb :'entries/index'
end

get '/entries/new' do
  erb :'entries/new'
end

post '/entries/new' do
  entry = current_user.entries.create(params[:entry])
  entry.tags << Tag.find_or_create_by(tag_name: params[:tag][:tag_name])
  redirect '/entries/index'
end

get '/entries/:id/edit' do
  @entry = Entry.find_by(id: params[:id])
  erb :'/entries/edit'

end

post '/entries' do
  entry = Entry.find_by(id: params[:entry_id])
  entry.update_attributes(title: params[:entry][:title], body: params[:entry][:body])
  redirect '/entries/index'
end

#get "/entries/:entry_id/tags/:id"

