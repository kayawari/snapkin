class DiariesController < ApplicationController
  def index
    user = User.find(current_user.id)
    @diaries = user.diaries
  end

  def new
    @diary = Diary.new
  end

  def create
    diary = Diary.new(diary_params.merge(user_id: current_user.id))
    if diary.save!(diary_params)
      redirect_to diaries_url, notice: '日記を登録しました'
    else
      render :new
    end
  end

  def edit
    @diary = Diary.find(params[:id])
  end

  def update
    diary = Diary.find(params[:id])
    if diary.update(diary_params)
      redirect_to diaries_url, notice: '日記を編集しました'
    else
      render :index
    end
  end

  def destroy
  end

  private

  def diary_params
    params.require(:diary).permit(:title, :content, :lat, :lng, :image, :image_cache, :remove_image)
  end
end
