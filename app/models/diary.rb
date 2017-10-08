class Diary < ApplicationRecord
  has_many :categories, class_name: 'DiaryCategory'
  belongs_to :users, optional: true
  mount_uploader :image, ImageUploader
end
