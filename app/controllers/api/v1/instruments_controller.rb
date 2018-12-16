class Api::V1::InstrumentsController < ApplicationController
     def index
        @instruments = Instrument.all
        render json: @instruments
     end
    
        def show 
        @lesson = Instrument.find(params[:id])
        if @lesson
            render json:@lesson
        else
            render json: {error: 'Instrument not found'}, status: 401
        end
     end

    def create
        @lesson = Instrument.new(lesson_params)
        if @lesson.save
            render json: @lesson 
        else
            render json: {error: 'Unable to create instrument'}, status: 400
        end 
    end

private

def student_params
    params.require(:instrument).permit(:name,:teacher_id)

end

end
