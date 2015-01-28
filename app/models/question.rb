class Question < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :asker, class_name: "User"
  belongs_to :replier, class_name: "User"
end
