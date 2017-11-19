class ApplicationController < ActionController::Base
  before_action :user_login?
  protect_from_forgery with: :exception

  def user_login?
    if session[:user_id].nil? || User.find(session[:user_id]).blank?
      @current_user = nil
      redirect_to login_path, alert: 'ログインできません'
    end
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
end
