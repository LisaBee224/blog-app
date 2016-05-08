get '/login' do
  erb :login
end

post '/login' do
  user = User.find_by(username: params[:user][:username])
  if user && user.authenticate(params[:user][:password])
    session[:user_id] = user.id
    redirect "/"
  else
    @errors = ["There was a problem with your login"]
    erb :login
  end
end

get '/logout' do
  session.clear
  redirect '/'
end

