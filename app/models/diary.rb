class Diary < ApplicationRecord
  has_many :diary_categories
  has_many :categories, through: :diary_categories
  accepts_nested_attributes_for :categories
  belongs_to :users, optional: true
  mount_uploader :image, ImageUploader

  validates :title, presence: true
  validates :content, presence: true
  validates :lat, presence: true, numericality: true
  validates :lng, presence: true, numericality: true
  validates :journey_time, presence: true
  validates_presence_of :image

  # TODO: gem: file_validatorなくてもいけるなら、これは削除
  validates :image, file_size: { less_than: 3.megabytes }
end
