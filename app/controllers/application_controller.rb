class ApplicationController < ActionController::Base
   
    helper_method :current_user
    helper_method :logged_in?

    def current_user
        @current_user ||= User.find_by_id(session[:user_id]) if !!session[:user_id]
    end

    def logged_in?
        @user == current_user
    end

end
