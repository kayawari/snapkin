module DiariesHelper
  def google_map_api_key
    Rails.application.secrets.googlemap
  end
end
