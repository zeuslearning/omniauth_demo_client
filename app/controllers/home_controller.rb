class HomeController < ApplicationController
  #before_filter :login_required#, :except => :index

  def index
    return nil unless session[:user_id]
    @current_user ||= User.find_by_uid(session[:user_id]['uid'])
  end
end
