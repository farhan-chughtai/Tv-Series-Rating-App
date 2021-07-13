class UserReview < ApplicationRecord
  validates :user_id, :review_id, presence: true

  validates :user_id, uniqueness: {scope: :review_id}

  belongs_to :user
  belongs_to :review
end
