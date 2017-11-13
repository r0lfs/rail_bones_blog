class CommentsController < ApplicationController
  before_action :authenticate, only: [:new, :create, :edit, :update, :destroy]

  def index
  end

  def new
    @comment = Comment.new(post_id: params[:id])
  end

  def create
    @post = Post.find_by(params[:id])
    @comment = Comment.new(comment_params)
    @comment.save
    # @comment = @post.comment.create(comment_params)
    redirect_to root_path(@comment.post_id)
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    Comment.find(params[:id]).destroy
    redirect_to root_path
  end
  private
  def comment_params
    params.require(:comment).permit(:user_id, :post_id, :content)
  end
end
