class PhotosController < ApplicationController

    def new 
        @photo = Photo.new
    end

    
    def create 
        @photo = Photo.new(photo_params)
        if @photo.save 
            redirect_to photo_path(@photo)
        else
            render :new
        end
    end
    
end
