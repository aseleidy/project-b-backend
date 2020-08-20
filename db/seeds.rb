# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Student.destroy_all
CourseUser.destroy_all
Course.destroy_all
Topic.destroy_all
StudentTopic.destroy_all
CourseTopic.destroy_all

topic_samples = ["psychology", "critical thinking", "philosophy", "decision making", "politics", "economics"]

topic_samples.map { |category| 
  Topic.create(category: category)
}

Student.create(username: "aseleidy", 
  password: "hello",
  first_name: "Ashley", 
  last_name: "Etemadi", 
  email: "aseleidy@gmail.com", 
  gender: 1, 
  age: 31, 
  country_origin: "Iran", 
  country_residence: "United States", 
  country_code: "+1",
  telephone: "9492664804",
  english_reading: 5,
  english_writing: 5,
  english_speaking: 5, 
  english_listening: 5,
  arabic_reading: 1,
  arabic_writing: 0, 
  arabic_speaking: 0, 
  arabic_listening: 1,
  turkish_reading: 0, 
  turkish_writing: 0, 
  turkish_speaking: 0, 
  turkish_listening: 0
);

StudentTopic.create(
  student_id: 1,
  topic_id: 1
)

StudentTopic.create(
  student_id: 1, 
  topic_id: 2
)

StudentTopic.create(
  student_id: 1, 
  topic_id: 6
)

Student.create(username: "simsim", 
  password: "123456",
  first_name: "Tasnim", 
  last_name: "Almoulki", 
  email: "simsim.almo@gmail.com", 
  gender: 1, 
  age: 24, 
  country_origin: "Syria", 
  country_residence: "Turkey", 
  country_code: "+92",
  telephone: "3334567890",
  english_reading: 4,
  english_writing: 4,
  english_speaking: 4, 
  english_listening: 4,
  arabic_reading: 5,
  arabic_writing: 5, 
  arabic_speaking: 5, 
  arabic_listening: 5,
  turkish_reading: 3, 
  turkish_writing: 3, 
  turkish_speaking: 3, 
  turkish_listening: 2
);

StudentTopic.create(
  student_id: 2, 
  topic_id: 2
)

StudentTopic.create(
  student_id: 2, 
  topic_id: 3
)

StudentTopic.create(
  student_id: 1, 
  topic_id: 4
)

Course.create(
  title: "Thinking for Success", 
  img_url: 'https://static.vecteezy.com/system/resources/previews/000/635/385/non_2x/business-people-create-idea-to-success-teamwork-concept-team-building-team-metaphor-vector-illustration.jpg',
  summary: 'A course description is a brief summary of the significant learning experiences for a course.',
  description: "TBD",  
  start_date: "2020-12-01", 
  meeting_day: "Saturdays", 
  time: "15:00:00", 
  english_reading: 3, 
  english_writing: 3, 
  english_speaking: 4, 
  english_listening:4, 
  arabic_reading: 0, 
  arabic_writing: 0, 
  arabic_speaking: 0, 
  arabic_listening: 0, 
  turkish_reading: 0, 
  turkish_writing: 0, 
  turkish_speaking: 0, 
  turkish_listening: 0 
);

Course.create(
  title: "Freedom", 
  img_url: 'https://static.vecteezy.com/system/resources/previews/000/635/418/non_2x/teamwork-successful-together-concept-people-holding-the-big-jigsaw-puzzle-piece-vector-illustration.jpg',
  summary: 'A course description is a brief summary of the significant learning experiences for a course.',
  description: "TBD",  
  start_date: "2020-12-01", 
  meeting_day: "Saturdays", 
  time: "15:00:00", 
  english_reading: 3, 
  english_writing: 3, 
  english_speaking: 4, 
  english_listening:4, 
  arabic_reading: 0, 
  arabic_writing: 0, 
  arabic_speaking: 0, 
  arabic_listening: 0, 
  turkish_reading: 0, 
  turkish_writing: 0, 
  turkish_speaking: 0, 
  turkish_listening: 0 
);

CourseTopic.create(
  course_id: 1,
  topic_id: 2
)

CourseTopic.create(
  course_id: 1,
  topic_id: 5
)

CourseTopic.create(
  course_id: 1,
  topic_id: 6
)

Course.create(
  title: "Critical Thinking", 
  img_url: 'https://talentlens.in/wp-content/uploads/2019/09/CRITICAL-THINKIN-02_VECTOR.png',
  summary: 'To narrow the gap in your own life between thinking and critical thinking so that the more thinking you do, the more critical your processes of reflection become.',
  description: "TBD",  
  start_date: "2021-02-01", 
  meeting_day: "Sundays", 
  time: "14:30:00", 
  english_reading: 3, 
  english_writing: 3, 
  english_speaking: 4, 
  english_listening:4, 
  arabic_reading: 0, 
  arabic_writing: 0, 
  arabic_speaking: 0, 
  arabic_listening: 0, 
  turkish_reading: 0, 
  turkish_writing: 0, 
  turkish_speaking: 0, 
  turkish_listening: 0 
);

CourseTopic.create(
  course_id: 2,
  topic_id: 1
)

CourseTopic.create(
  course_id: 2,
  topic_id: 2
)

CourseTopic.create(
  course_id: 2,
  topic_id: 3
)

CourseTopic.create(
  course_id: 2,
  topic_id: 4
)

CourseUser.create(
  student_id: Student.first.id, 
  course_id: 1 
)

CourseUser.create(
  student_id: Student.second.id,
  course_id: 1
)

CourseUser.create(
  student_id: Student.second.id,
  course_id: 2
)