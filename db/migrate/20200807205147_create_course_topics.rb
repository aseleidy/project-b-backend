class CreateCourseTopics < ActiveRecord::Migration[6.0]
  def change
    create_table :course_topics do |t|
      t.integer :course_id
      t.integer :topic_id

      t.timestamps
    end
  end
end
