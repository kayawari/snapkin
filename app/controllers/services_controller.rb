class ServicesController < ApplicationController
  skip_before_action :user_login?

  def detail
  end
end


