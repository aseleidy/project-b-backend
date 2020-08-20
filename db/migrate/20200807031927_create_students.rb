class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :username
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :gender
      t.integer :age
      t.string :country_origin
      t.string :country_residence
      t.string :country_code
      t.string :telephone
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
