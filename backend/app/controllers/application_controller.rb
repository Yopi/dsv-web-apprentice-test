class ApplicationController < ActionController::API
  # Helper to get the current user
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end