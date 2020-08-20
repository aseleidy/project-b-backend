class CourseSerializer < ActiveModel::Serializer
  attributes :id, :title, :img_url, :summary, :description, :start_date, :meeting_day, :time, :english_reading, :english_writing, :english_speaking, :english_listening, :arabic_reading, :arabic_writing, :arabic_speaking, :arabic_listening, :turkish_reading, :turkish_writing, :turkish_speaking, :turkish_listening
  has_many :topics
  has_many :students
end