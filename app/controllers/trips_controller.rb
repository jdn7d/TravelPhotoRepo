class TripsController < ApplicationController

    before_action  :find_trip, only: [:show, :edit, :destroy]

    def index 
        @trips = current_user.trips
    end

    def new 
        @user = User.find_by_id(params[:user_id] )
        @trip = Trip.new
    end 

    def create 
        @user = User.find_by_id(params[:user_id] )
        @trip = Trip.new(trip_params)
        if @trip.save 
            redirect_to user_trip_path(@user, @trip)
        else
            render :new
        end
    end

    def show
        @user = User.find_by_id(params[:user_id] )
    end

    def destroy
        @trip.destroy
        @user = User.find_by_id(params[:user_id] )
        redirect_to user_path(@user)
    end

    def edit 
        
    end

    def update 
        
        if @trip.update(trip_params) 
           redirect_to trip_path(@trip)
        else
           render :edit
        end
     end
  


    private

    def find_trip 
        @trip = Trip.find(params[:id])
    end

    def trip_params
       params.require(:trip).permit(:location, :date, :private, :user_id, :cover_photo)

    end


end
