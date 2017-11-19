class UsersController < ApplicationController
  skip_before_action :user_login?, only: [:new, :create]

  def show
    unless params[:id].to_i == session[:user_id]
      redirect_to user_url(session[:user_id]), notice: '指定したURLは表示できません'
    end
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash.now[:notice] = 'ユーザー登録が完了しました。'
      redirect_to user_url(@user)
    else
      flash.now[:alert] = 'ユーザー登録失敗'
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(edit_user_params)
      flash.now[:notice] = 'ユーザー情報を編集しました'
      redirect_to user_url(@user)
    else
      flash.now[:alert] = 'ユーザー情報編集失敗'
      render :show
    end
  end

  private

    def user_params
      params.require(:user).permit(:email, :first_name, :last_name, :nick_name, :password, :password_confirmation)
    end

    def edit_user_params
      params.require(:user).permit(:first_name, :last_name, :nick_name)
    end
end
