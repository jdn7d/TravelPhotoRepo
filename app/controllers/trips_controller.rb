class TripsController < ApplicationController

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

    def trip_params
       params.require(:trip).permit(:location, :date)
    end


end
