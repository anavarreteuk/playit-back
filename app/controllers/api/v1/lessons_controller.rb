class Api::V1::LessonsController < ApplicationController
     def index
        @lessons = Lesson.all
        render json: @lessons
    end

    def show 
        @lesson = Lesson.find(params[:id])
        if @lesson
            render json:@lesson
        else
            render json: {error: 'Lesson not found'}, status: 401
        end
    end

    def create
        @lesson = Lesson.new(lesson_params)
        if @lesson.save
            render json: @lesson 
        else
            render json: {error: 'Unable to create lesson'}, status: 400
        end 
    end

private

def student_params
    params.require(:lesson).permit(:data,:time,:duration)

end
end
