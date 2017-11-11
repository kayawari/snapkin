class Diary < ApplicationRecord
  has_many :categories, class_name: 'DiaryCategory'
  accepts_nested_attributes_for :categories, allow_destroy: true
  belongs_to :users, optional: true
  mount_uploader :image, ImageUploader

  validates :title, presence: true
  validates :content, presence: true
  validates :lat, presence: true, numericality: true
  validates :lng, presence: true, numericality: true
  validates :journey_time, presence: true
  validates :image,
    presence: true,
    file_size:  {
      maximum: 3.megabytes
    }
end
