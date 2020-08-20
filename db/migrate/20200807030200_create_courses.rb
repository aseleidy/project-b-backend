class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.date :start_date
      t.string :meeting_day
      t.time :time
      t.integer :english_reading
      t.integer :english_writing
      t.integer :english_speaking
      t.integer :english_listening
      t.integer :arabic_reading
      t.integer :arabic_writing
      t.integer :arabic_speaking
      t.integer :arabic_listening
      t.integer :turkish_reading
      t.integer :turkish_writing
      t.integer :turkish_speaking
      t.integer :turkish_listening

      t.timestamps
    end
  end
end
