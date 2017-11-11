module ApplicationHelper
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def google_map_api_key
    Rails.application.secrets.googlemap
  end

  def login?
    session[:user_id].present?
  end
end
