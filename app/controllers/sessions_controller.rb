class SessionsController < ApplicationController
  def new
    redirect_to user_path(session[:user_id]) unless session[:user_id].nil?
  end

  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to user_url(@user)
    else
      flash.now[:alert] = 'ログインできません'
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    @current_user = nil
    redirect_to login_path, notice: 'ログアウトしました'
  end
end
