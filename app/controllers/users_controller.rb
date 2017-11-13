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
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash[:alert] = 'Email or Display Name already taken'
      redirect_to new_user_path
    end
  end

  def show
    @user = User.find(params[:id])
    @posts= @user.posts.all
    @comments = Comment.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    #checks to make sure pass matches and email and dsiplay name aren't blank before updating
    if @user.password == user_params[:password] and @user.update(user_params)
      @user.update(user_params)
      redirect_to @user
    else
      flash[:alert] = 'You did not enter the correct password'
      redirect_to edit_user_path(@user)
    end
  end

  def destroy
    User.find(params[:id]).destroy
    session[:user_id] = nil
    redirect_to users_path
  end

  def search
    puts "here are the params #{params.inspect}"
    @users = User.where('display_name LIKE ?', "%#{params[:search_name]}%")
    respond_to do |format|
     format.js  { render :partial => "elements/livesearch", :locals => {:search => @users, :query => params[:search_name]} }
     format.html    { render :index }
    end
    render :layout, false
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :dis_name, :email, :password, :about)
  end
end

