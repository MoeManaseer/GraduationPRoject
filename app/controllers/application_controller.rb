class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?, :isAdmin
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end
  def isAdmin
    if logged_in?
      if User.find(session[:user_id]).admin
        return true;
      else
        return false;
      end
    end
    return false;
  end

  def require_user
    if !logged_in?
      flash[:error] = "You must be logged in to perform that action"
      redirect_to login_path
    end
  end
end
