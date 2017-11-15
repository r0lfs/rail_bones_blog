class UsersController < ApplicationController
  before_action :authenticate, only: [:edit, :update, :destroy]
  before_action :user_logged_in?, only: [:following, :followers]

  def index
    @users = User.all
    if params[:search]
      @users = User.search(params[:search]).order("created_at DESC")
    else
      @users = User.all.order("created_at DESC")
    end
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
    @user.update(user_params)
    redirect_to @user
  end

  def destroy
    respond_to do |format|
      User.find(params[:id]).destroy
      session[:user_id] = nil
      format.js
      format.html {redirect_to root_path}
    end
  end

  def following
    @title = "Following"
    @user  = User.find(params[:id])
    @users = @user.following.all
    render 'show_follow'
  end

  def followers
    @title = "Followers"
    @user  = User.find(params[:id])
    @users = @user.followers.all
    render 'show_follow'
  end

  def follow(other_user)
    active_relationships.create(followed_id: other_user.id)
  end

  def unfollow(other_user)
    following.delete(other_user)
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :dis_name, :email, :password, :about)
  end
end

