class User < ApplicationRecord
  has_many :diaries
  has_many :diary_categories
end
