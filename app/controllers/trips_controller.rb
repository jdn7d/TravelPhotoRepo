class TripsController < ApplicationController

    before_action  :find_trip, only: [:show, :destroy]

    def index 
        @trips = current_user.trips
    end

    def new 
        @trip = Trip.new
    end 

    def create 
        @trip = Trip.new(trip_params)
        if @trip.save 
            redirect_to trip_path(@trip)
        else
            render :new
        end
    end



    private

    def find_trip 
        @trip = Trip.find(params[:id])
    end

    def trip_params
       params.require(:trip).permit(:location, :date, :user_id, :cover_photo)
    end


end
