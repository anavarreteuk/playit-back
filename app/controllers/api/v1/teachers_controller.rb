class Api::V1::TeachersController < ApplicationController
    def index
        @teachers = Teacher.all
        render json: @teachers
    end
    
    def show 
        @teacher = Teacher.find_by(id: params[:id])
        if @teacher
            render json:@teacher
        else
            render json: {error: 'Teacher not found'}, status: 401
        end
    end
    def create
        @teacher = Teacher.new(teacher_params)
        if @teacher.save
            render json: @teacher 
        else
            render json: {error: 'Unable to create teacher'}, status: 400
        end 
    end

    def get_teacher_availabilities_in_week
        @teacher = Teacher.find_by(id: params[:id])
        if @teacher
            render json: @teacher.availabilities_in_week(params[:date])
        else
            render json: {error: 'Teacher not found'}, status: 401
        end
    end

private

def teacher_params
    params.require(:teacher).permit(:username,:image,:email,:instrument_id,:location,:price_hour)


end
end
