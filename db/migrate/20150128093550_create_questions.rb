class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      # t.integer :user_topic_id
      t.text  :content
      t.integer :asker_id #user that asks question
      t.integer :replier_id # user that answers question
      t.timestamps
    end
  end
end
