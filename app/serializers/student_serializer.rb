class StudentSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :age, :country_origin, :country_residence, :country_code, :telephone, :english_reading, :english_writing, :english_speaking, :english_listening, :arabic_reading, :arabic_writing, :arabic_speaking, :arabic_listening, :turkish_reading, :turkish_writing, :turkish_speaking, :turkish_listening
  has_many :courses
  has_many :topics
end