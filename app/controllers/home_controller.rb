class HomeController < ApplicationController
  #before_filter :login_required#, :except => :index

  def index
    if session[:user_id]
      redirect_to '/show_post'
    else
      if cookies[:current_user_single_sign_on_id]
        respond_to do |format  |
            format.html  {
              redirect_to '/auth/concordid'
            }
            format.json {
              render :json => { 'error' => 'Access Denied' }.to_json
            }
        end
      end
    end
  end
end
