6.times do
  User.create(username: Faker::Internet.user_name, email:Faker::Internet.email, password:"test" )
end
User.create(username: "test", email: "test@test.org", password: "test")
