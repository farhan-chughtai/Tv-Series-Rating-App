class Review < ApplicationRecord
  validates :tv_season_id, :rating, presence: true  

  belongs_to :tv_season
  has_many :user_reviews
  has_many :users, through: :user_reviews

end
