class Genre < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :tv_seasons
end
