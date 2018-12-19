class Api::V1::StudentsController < ApplicationController
     def index
        @students = Student.all
        render json: @students
    end

    def signin
        @student = Student.find_by(username: params[:username])
        if @student && @student.authenticate(params[:password])
            render json: {username: @student.username, token: issue_token({id: @student.id})}
        else render json: {error: 'Username/password invalid.'}, status: 401
        end
    end
    
    def signup
     @student = Student.new(image: params[:image], email: params[:email], password: params[:password], username: params[:username])

    if @student.valid?
        @student.save
        puts @student
        render json: {username: @student.username, email: @student.email, token: issue_token({id: @student.id})}
    else
        render json: {error: 'Incorrect details or email address already taken'}, status: 400
    end
  end

   def validate
        @student = get_current_user
        if @student
            render json: {username: @student.username, token: issue_token({id: @student.id})}
        else
            render json: {error: 'Username/password invalid.'}, status: 401
        end
    end

    def show 
        @student = Student.find(params[:id])
        if @student
            render json:@student
        else
            render json: {error: 'Student not found'}, status: 401
        end
    end

    def create
        @student = Student.new(student_params)
        if @student.save
            render json: @student 
        else
            render json: {error: 'Unable to create user'}, status: 400
        end 
    end

private

def student_params
    params.require(:student).permit(:username,:image,:email,:password_digest)

end
end