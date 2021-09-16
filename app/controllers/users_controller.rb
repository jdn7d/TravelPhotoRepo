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

        if !logged_in?
           redirect_to '/signin'
          end
     end

     
   private

   def user_params
      params.require(:user).permit(:username, :email, :password)
   end
end
