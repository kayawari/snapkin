class DiaryCategory < ApplicationRecord
  belongs_to :diary
  belongs_to :user, optional: true
end
