6.times do
  User.create(username: Faker::Internet.user_name, email:Faker::Internet.email, password:"test" )
end
test = User.create(username: "test", email: "test@test.org", password: "test")

6.times do |id|
  test.asked_questions.create(content: Faker::Lorem.sentence, replier_id: (id +1))
end
 6.times do |id|
  User.find(id+1).asked_questions.create(content: Faker::Lorem.sentence, replier_id: test.id)
end
