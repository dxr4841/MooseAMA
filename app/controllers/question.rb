get "/questions/all" do
  @questions = Question.all
  erb :'/question/all'
end

get "/questions/:id" do |id|
  @question = Question.find(id)
  erb :'/question/single', locals: {question: @question}
end
