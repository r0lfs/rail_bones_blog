class CommentsController < ApplicationController
  def index
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new
    @user = current_user
    @post = 
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
