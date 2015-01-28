get '/users/:id' do |id|
  @user = User.find(id)
  erb :'/user/show'
end

put "/users/:id" do |id|
 user = User.find(id)
  user.update(params[:user])
  redirect "/users/#{user.id}"
end


