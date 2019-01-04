class Api::V1::AvailabilitiesController < ApplicationController
    def index
        @availabilities = Availability.all
        render json: @availabilities
    end

    def show 
        @availability = Availability.find(params[:id])
        if @availability
            render json:@availability
        else
            render json: {error: 'Availability not found'}, status: 401
        end
    end

    def create
        @availability = Availability.new(lesson_params)
        if @availability.save
            render json: @availability 
        else
            render json: {error: 'Unable to create availability'}, status: 400
        end 
    end

private

def lesson_params
    params.require(:availability).permit(:day,:time,:teacher_id,:duration)

end
end
