class Api::V1::StudentsController < ApplicationController
     def index
        @students = Student.all
        render json: @students
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