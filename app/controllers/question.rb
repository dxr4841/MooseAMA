get "/questions/:id" do |id|
  @question = Question.find(id)
  erb :'/question/single', locals: {question: @question}
end
