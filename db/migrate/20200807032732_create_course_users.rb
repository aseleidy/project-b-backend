class CreateCourseUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :course_users do |t|
      t.integer :student_id
      t.integer :course_id
      t.integer :status

      t.timestamps
    end
  end
end
