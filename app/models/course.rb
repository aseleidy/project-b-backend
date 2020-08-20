class Course < ApplicationRecord
  has_many :course_users
  has_many :students, through: :course_users
  has_many :course_topics
  has_many :topics, through: :course_topics
end
