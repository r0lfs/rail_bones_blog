class CommentsController < ApplicationController
  before_action :authenticate, only: [:new, :create, :edit, :update, :destroy]

  def index
  end

  def new
    @comment = Comment.new(post_id: params[:id])
  end

  def create
    @post = Post.find_by(params[:id])
    respond_to do |format|
      @comment = Comment.new(comment_params)
      @comment.save
      format.js 
      format.html {redirect_to root_path}
    end
    # @comment = @post.comment.create(comment_params)
    # redirect_to root_path(@comment.post_id)
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    respond_to do |format|
      Comment.find(params[:id]).destroy
      format.js
      format.html {redirect_to root_path}
    end
  end
  
  private
  def comment_params
    params.require(:comment).permit(:user_id, :post_id, :content)
  end
end
