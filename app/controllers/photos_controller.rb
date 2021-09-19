class PhotosController < ApplicationController

    before_action  :find_photo, only: [:show, :destroy]

    def index 
        @photos = current_user.photos
    end

    def new 
        @trip = Trip.find_by_id(params[:trip_id] )
        @photo = Photo.new
        
    end


    def create 
        
        @trip = Trip.find_by_id(params[:trip_id] )
        @photo = Photo.new(photo_params)
        if @photo.save 
            redirect_to trip_path(@trip)
        else
            render :new
        end
    end

    private 

    def find_photo 
        @photo = Photo.find(params[:id])
    end

    def photo_params
        params.require(:photo).permit(:category, :file, :trip_id)
     end
end
