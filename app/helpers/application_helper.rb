module ApplicationHelper
  def current_user
    unless @current_user
      if session[:user_id]
        @current_user = User.find_by_id(session[:user_id])
      end
    end
    return @current_user
  end
end
