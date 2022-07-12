class UsersController < ApplicationController
    # before_action :authorize, only: [:show]
    #app checks to usee if a user is logged in and redirect to login path. if they aren't before the show action is fired

    def new
        @user = User.new 
    end

    def index 
      @user = User.all
      render json: @user 
    end 

  def create
    @user = User.create(user_params)
    if @user.valid?
      @user.save
      redirect_to @user
    else  
      redirect :new
    end
  end
  #if user instance is valid, the user will be redirected to their show page 
  #show page goes to experiences 

  def show
    user = User.find(session[:user_id])
    render json: user
  end

  # def show 
  #   user = User.find_by(id: session[:user_id])
  #  if user
  #     render json: user
  #   else
  #     render json: { error: "Not authorized" }, status: :unauthorized
  #   end
  # end

  private

  def authorize
    return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
  end

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation, :hometown, :first_name, :last_name)
  end
end
