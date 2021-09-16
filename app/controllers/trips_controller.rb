class TripsController < ApplicationController

    before_action  :find_trip, only: [:show, :destroy]

    def new 
        @trip = Trip.new
    end 

    def create 
        @trip = Trip.new(trip_params)
        if @trip.save 
            redirect_to @user
        else
            render :new
        end
    end



    private

    def find_trip 
        @trip = Trip.find(params[:id])
    end

    def trip_params
       params.require(:trip).permit(:location, :date, :user_id, photos: [])
    end


end
