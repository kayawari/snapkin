class DiariesController < ApplicationController
  def index
  end

  def new
    @diary = Diary.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def diary_params
    params.require(:diary).permit(:title, :content, :image_id, :lat, :lng, :category_id, :journey_time)
  end
end
