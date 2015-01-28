class Question < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :asker, class_name: "User"
  belongs_to :replier, class_name: "User"

  def asker_name
    User.find_by(id: self.asker_id).username
  end

  def replier_name
    User.find_by(id: self.replier_id).username
  end
end
