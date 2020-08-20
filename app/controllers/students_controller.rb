class StudentsController < ApplicationController
  
  def index
    students = Student.all 
    render json: students 
  end 

  def show 
    student = Student.find(params[:id])
    render json: student
  end 

  def create
    student = Student.new(student_params)
    if student.save 
      topics = params[:category]

      topics.map { |category| 
       
        topic = Topic.find(category['topic_id'])
       
        StudentTopic.create({student_id: student.id, topic_id: topic.id}) 
      }      
      render json: student
    else 
      render json: { error: 'An account with that username or email already exists.' }
    end 
  end 

  def update 
    # student = Student.find(params[:id])
    # student.update(student_params)
    # render json: student
  end 

  private 

  def student_params
    { 
      username: params[:username],
      password: params[:password], 
      first_name: params[:first_name],
      last_name: params[:last_name], 
      email: params[:email], 
      gender: params[:gender], 
      age: params[:age], 
      country_origin: params[:country_origin], 
      country_residence: params[:country_residence], 
      country_code: params[:country_code],
      telephone: params[:telephone],
      english_reading: params[:english_reading],
      english_writing: params[:english_writing],
      english_speaking: params[:english_speaking], 
      english_listening: params[:english_listening],
      arabic_reading: params[:arabic_reading],
      arabic_writing: params[:arabic_writing], 
      arabic_speaking: params[:arabic_speaking], 
      arabic_listening: params[:arabic_listening],
      turkish_reading: params[:turkish_reading], 
      turkish_writing: params[:turkish_writing], 
      turkish_speaking: params[:turkish_speaking], 
      turkish_listening: params[:turkish_listening]
    }
  end 
end
