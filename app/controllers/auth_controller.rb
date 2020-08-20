class AuthController < ApplicationController
  # skip_before_action :authorized, only: :create

  def create   
    student = Student.find_by(username: params[:username])

    if student && student.authenticate(params[:password])
      payload = { student_id: student.id }
      secret = 'S3cr3t0!@1953'
      token = JWT.encode(payload, secret, 'HS256')

      render json: { id: student.id, username: student.username, jwt: token}
    else 
      render json: { error: 'Invalid username or password' }
    end 
  end 

  def show 
    token = request.headers['Authorization'].split(' ').last
    secret = 'S3cr3t0!@1953'
    decoded_token = JWT.decode(token, secret, true, { algorithm: 'HS256'})
    id = decoded_token.first['student_id']

    student = Student.find(id)
    if student 
      render json: student
    else 
      render json: { error: 'Invalid token' }
    end 
  end 
end 