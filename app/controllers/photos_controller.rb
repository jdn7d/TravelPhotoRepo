class PhotosController < ApplicationController

    def new 
        @photo = Photo.new
    end

    
    def create 
        @photo = Photo.new(photo_params)
        if @photo.save 
            redirect_to trip_path(@photo)
        else
            render :new
        end
    end

    private 

    def photo_params
        params.require(:photo).permit(:category, :file)
     end
end
