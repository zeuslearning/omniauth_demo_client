class ApplicationController < ActionController::Base
  protect_from_forgery
  def login_required
    if !current_user
        redirect_to '/'
    end
  end

  def current_user
    return nil unless session[:user_id]
    @current_user ||= User.find_by_uid(session[:user_id]['uid'])
  end

end
