class SessionsController < ApplicationController
  def new
  end

  # TODO: マスターにマージしたらスペック書く
  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to user_url(@user)
    else
      flash.now[:danger] = 'ログインできません'
      render :new
    end
  end

  def destroy

  end
end
