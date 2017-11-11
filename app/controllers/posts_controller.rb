class PostsController < ApplicationController
  before_action :authenticate, only: [:new, :create, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def new
    p params
    @user_id = params[:user_id]
    @post = Post.new
  end

  def create
    
    @user = User.find(params[:user_id])
    p params
    @post = @user.posts.create(post_params)
    redirect_to @post
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to @post
  end

  def destroy
    Post.find(params[:id]).destroy
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:user_id, :title, :content)
  end
end
