class PhotosController < ApplicationController

    before_action  :find_photo, only: [:show, :destroy]

    def index 
        @photos = Photo.all
    end

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

    private 

    def find_photo 
        @photo = Photo.find(params[:id])
    end

    def photo_params
        params.require(:photo).permit(:category, :file)
     end
end
