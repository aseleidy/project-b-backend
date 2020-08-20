class CourseUsersController < ApplicationController
  def index
    course_users = CourseUser.all 
    render json: course_users
  end 

  def show 
    course_user = CourseUser.find(params[:id])
    render json: course_user
  end 

  def create 
    course_user = CourseUser.create({student_id: params[:student_id], course_id: params[:course_id]})
  end 
end
