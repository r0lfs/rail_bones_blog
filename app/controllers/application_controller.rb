class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user, :authenticate, :user_logged_in?

  def authenticate
  	if !user_logged_in?
  		redirect_to new_session_path  		
  	end
  end

  def current_user
  	if session[:user_id] 
  		User.find(session[:user_id])
  	end
  end
  

  def user_logged_in?
  	!session[:user_id].nil?
  end
end
