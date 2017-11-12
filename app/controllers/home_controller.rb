class HomeController < ApplicationController
  def index
  	@posts = Post.all
  	@comments = Comment.all
  	if !user_logged_in?
  		redirect_to new_session_path
  	end
  end

end
