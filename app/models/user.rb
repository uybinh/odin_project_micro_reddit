class User < ApplicationRecord
  validates :name, presence: true,
  length: { :in => 6..50 }

  has_many :posts
  has_many :comments, through: :posts
end