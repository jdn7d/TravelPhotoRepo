class SessionsController < ApplicationController
  
    def create
      @user = User.find_by_email(params[:email])

      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
        redirect_to '/signin'
      end
    end

    def destroy     
      session.delete :designer_id
      redirect_to '/signin' 
    end  
      
  end