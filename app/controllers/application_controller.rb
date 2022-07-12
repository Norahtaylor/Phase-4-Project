class ApplicationController < ActionController::API
  include ActionController::Cookies
  # helper_method :logged_in?, :current_user

  # def current_user
  #   if session[:user_id]
  #     @user = User.find(session[:user_id])
  #   end
  # end
  #looks for value in :user_id key of the session cookie-hash 
  #if there is one, corresponding user returned 
  #otherwise return nil 

  # def logged_in?
  #   !!current_user
  # end
  # #coerces the return value of current_user into a Boolean 

  # def authorized
  #   redirect_to login_path unless logged_in?
  # end
  #trigger redirect to login page unless user is logged in. 

end
