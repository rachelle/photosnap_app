class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user 
    #find method will error with nil, find_by will not error with nil
  @current_user ||= User.find_by(id: session[:user_id]) 
  end

  def logged_in?
    !!current_user
  end

  def authenticate
    unless logged_in?
      flash[:error] = "You must be logged in buddy!"
      redirect_to login_url 
    end 
  end

 

end