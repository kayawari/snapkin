class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_url(@user)
    else
      render :new
    end
  end

  def edit

  end

  def update

  end

  private

    def user_params
      params.require(:user).permit(:email, :first_name, :last_name, :nick_name, :password, :password_confirmation)
    end
end