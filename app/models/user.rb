class User < ApplicationRecord
  has_many :diaries
  has_many :diary_categories

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # メールアドレスは大文字小文字を区別しないのでcase_sensitive: false
  validates :email, presence: true, length: {maximum: 255}, format: {with: VALID_EMAIL_REGEX},
            uniqueness: {case_sensitive: false}
  validates :first_name, presence: true, length: {maximum: 50}
  validates :last_name, presence: true, length: {maximum: 50}
  validates :nick_name, presence: true, length: {maximum: 50}
  # TODO: 経度、緯度のformatを設定
  # validates :default_lat
  # validates :default_lng

  has_secure_password
  validates :password, presence: true, length: {minimum: 8}
end
