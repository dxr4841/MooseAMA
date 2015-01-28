class User < ActiveRecord::Base
  has_secure_password

  has_many :questions
  has_many :answers, through: :questions

  has_many :asked_questions, foreign_key: "asker_id", class_name: "Question"
  has_many :replied_questions, foreign_key: "replier_id", class_name: "Question"

  has_many :askers, through: :replied_questions, source: :asker
  has_many :repliers, through: :asked_questions, source: :replier
end
