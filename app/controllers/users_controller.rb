class UsersController < ApplicationController 
    def new 
        @user = User.new
     end
  
     def create
        @user = User.new(user_params)
        if @user.save
           session[:designer_id] = @user.id
           redirect_to @user
        else 
           render :new
        end   
     end
     
     def show
        @user = User.find(params[:id] )
     end
end
