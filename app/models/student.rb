class Student < ApplicationRecord
  has_many :course_users
  has_many :courses, through: :course_users
  has_many :student_topics
  has_many :topics, through: :student_topics
  has_secure_password
  validates_uniqueness_of :username, :email, :case_sensitive => false
  validates_presence_of :username, :password, :first_name, :last_name, :email, :gender, :age, :country_origin, :country_residence, :country_code, :telephone, :english_reading, :english_writing, :english_speaking, :english_listening, :arabic_reading, :arabic_writing, :arabic_speaking, :arabic_listening, :turkish_reading, :turkish_writing, :turkish_speaking, :turkish_listening
end
