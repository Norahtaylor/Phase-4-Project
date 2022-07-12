class SessionsController < ApplicationController
    def new
    end
    #responsible for rendering a page that enables a user to create a new session(logging in)
  
    def create 
      user = User.find_by(username: params[:username])
      session[:user_id] = user.id
      render json: user 
    end 

    def destroy
        session[:user_id] = nil
        redirect_to login_path
    end

      #or 
      
    #def destroy
        #session.delete :user_id
        #head :no_content
    #end

  end