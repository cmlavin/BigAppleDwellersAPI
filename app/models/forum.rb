class Forum < ApplicationRecord
  has_many :users
  has_many :posts
  has_many :comments, through: :posts
end
