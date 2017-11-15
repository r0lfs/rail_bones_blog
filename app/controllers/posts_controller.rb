class PostsController < ApplicationController
  before_action :authenticate, only: [:new, :create, :edit, :update, :destroy]

  def index
    @posts = current_user.posts.all
    @post = Post.new
  end

  def new
    p params
    @post = Post.new
    @comment = Comment.new(post_id: params[:post_id])
  end

  def create
    respond_to do |format|
      @user = current_user
      @post = @user.posts.create(post_params)
      format.js 
      format.html { redirect_to root_path }
    end
  end

  def show
    p params
    @post = Post.find(params[:id])
    @comments = Comment.where(post_id: params[:id])
    p params
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to(@post, flash[:alert] = 'User was successfully updated.') }
        format.json { respond_with_bip(@post) }
      else
        format.html { render :action => "edit" }
        format.json { respond_with_bip(@post) }
      end
    end
  end

  def destroy
    respond_to do |format|
      Post.find(params[:id]).destroy
      format.js
      format.html {redirect_to root_path}
    end
  end

  private
  def post_params
    params.require(:post).permit(:user_id, :title, :content)
  end
end
