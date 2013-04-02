class HomeController < ApplicationController
  #before_filter :login_required#, :except => :index

  def index
    if session[:user_id]
      redirect_to '/show_post'
    end
  end
end
