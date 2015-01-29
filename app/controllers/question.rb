get "/questions/all" do
  @questions = Question.all
  erb :'/question/all'
end

get "/questions/:id" do |id|
  @question = Question.find(id)
  erb :'/question/single', locals: {question: @question}
end

put "/questions/:id" do |id|
  question = Question.find(id)
  question.update(params[:question])
  redirect "/users/#{current_user.id}"
end
post "/questions" do
  question = Question.create(params[:question])
  question.update(asker_id: current_user.id)
  Answer.create(user_id: replier_id)
  redirect "/users/#{current_user.id}"
end

delete "/questions/:id" do |id|
  Question.find(id).delete
  redirect "/users/#{current_user.id}"
end
