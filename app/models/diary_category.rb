class DiaryCategory < ApplicationRecord
  belongs_to :diaries
  belongs_to :users
end
