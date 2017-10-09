class Post < ApplicationRecord
  belongs_to :forum
  belongs_to :user
  has_many :comments
  has_many :likes
end
