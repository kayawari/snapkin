class Diary < ApplicationRecord
  has_many :categories, class_name: 'DiaryCategory'
  has_one :images
  belongs_to :users
end
