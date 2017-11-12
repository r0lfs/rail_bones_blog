class UsersController < ApplicationController
  before_action :authenticate, only: [:edit, :update, :destroy]

  def index
    @users = User.all
  end

  def new
    @user = User.new

  end

  def create
    @user = User.new(user_params)
    if user_params[:password] != '' and user_params[:email] != '' and user_params[:dis_name] != ''
      @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash[:alert] = 'Your account did not get created'
      redirect_to new_user_path
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    #checks to make sure pass matches and email and dsiplay name aren't blank before updating
    if @user.password == user_params[:password] and user_params[:email] != '' and user_params[:dis_name] != '' 
      @user.update(user_params)
      redirect_to @user
    else
      flash[:alert] = 'You did not enter the correct password'
      redirect_to edit_user_path(@user)
    end
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to users_path
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :dis_name, :email, :password, :about)
  end
end

