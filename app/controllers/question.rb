get "/questions/all" do
  @questions = Question.all
  erb :'/question/all'
end

get "/questions/:id" do |id|
  @question = Question.find(id)
  erb :'/question/single', locals: {question: @question}
end

post "/questions" do
  question = Question.create(params[:question])
  question.update(asker_id: current_user.id)
  redirect "/questions/all"
end
