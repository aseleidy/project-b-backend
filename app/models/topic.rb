class Topic < ApplicationRecord
  has_many :student_topics
  has_many :students, through: :student_topics
  has_many :course_topics
  has_many :courses, through: :course_topics
end
