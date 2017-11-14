class RelationshipsController < ApplicationController
	before_action :user_logged_in?

  def create
    @user = User.find(params[:followed_id])
    current_user.following<<@user
    respond_to do |format|
      format.html { redirect_to @user }
      format.js
    end
  end

  def destroy
    @user = Relationship.find(params[:id]).followed
    current_user.following.delete(@user)
    respond_to do |format|
      format.html { redirect_to @user }
      format.js
    end
  end

 
end
