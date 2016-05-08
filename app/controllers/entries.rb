get '/entries/index' do
  @entries = Entry.all
  erb :'entries/index'
end

get '/entries/new' do
  erb :'entries/new'
end

post '/entries/new' do
  @user_id = current_user.id
  @title = params[:entry][:title]
  @body = params[:entry][:body]
  @tag = params[:tag][:tag_name]
  Entry.create(user_id: @user_id, title: @title, body: @body).tags << Tag.create(tag_name: @tag)
  redirect '/entries/index'
end
