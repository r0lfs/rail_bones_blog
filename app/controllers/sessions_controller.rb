class SessionsController < ApplicationController
  def index
  end

  def new
    #does not require model, therefor no new
  end

  def create
    p params
    @user = User.find_by(session_params)
    if @user
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash[:alert] = 'Your email or password was incorrect'
      redirect_to new_session_path
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end

  private
  def session_params
    params.require(:login).permit(:email, :password)
  end
end
