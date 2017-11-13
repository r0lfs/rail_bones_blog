class PostsController < ApplicationController
  before_action :authenticate, only: [:new, :create, :edit, :update, :destroy]

  def index
    @posts = current_user.posts.all
    @comments = Comment.all
  end

  def new
    p params
    @post = Post.new
    @comment = Comment.new(post_id: params[:post_id])
  end

  def create
    @user = current_user
    @post = @user.posts.create(post_params)
    redirect_to root_path
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
    Post.find(params[:id]).destroy
    redirect_to root_path
  end

  private
  def post_params
    params.require(:post).permit(:user_id, :title, :content)
  end
end
