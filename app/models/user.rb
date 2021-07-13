class User < ApplicationRecord
  validates :name, presence: true

  has_many :user_reviews
  has_many :reviews, through: :user_reviews
end
