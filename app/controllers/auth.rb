
get '/signin' do
  erb :'auth/signin'
end

post '/signin' do
  user = User.find_by(username: params[:user][:username])

  if user.try(:authenticate, params[:user][:password])
    session[:user_id] = user.id
    redirect '/'
  else
    redirect '/signin'
  end
end

get '/signup' do
  erb :'/auth/signup'
end

post '/signup' do
  user = User.new(params[:user])
  if user.save
    session[:user_id] = user.id
    redirect "/"
  else
    redirect "/signup"
  end
end

get '/signout' do
  session[:user_id] = nil
  redirect '/'
end
