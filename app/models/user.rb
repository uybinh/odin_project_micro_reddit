class User < ApplicationRecord
  validates :name, presence: true, length: { :in => 6..50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX}

  has_secure_password
  has_many :posts
  has_many :comments, through: :posts
end