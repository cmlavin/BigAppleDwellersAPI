class User < ApplicationRecord
  has_secure_password
  has_many :forums
  has_many :posts
  has_many :comments
  has_many :likes
  has_many :posts, through: :forums
end
