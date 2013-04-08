class ApplicationController < ActionController::Base
  protect_from_forgery

  private

	  def current_user
	  	@current_user ||= User.find_by_email!(session[:user_email]) if session[:user_email]
	  end
	  helper_method :current_user

end
