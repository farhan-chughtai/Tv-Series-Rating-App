class TvSeason < ApplicationRecord
  validates :name, :genre_id, :no_seasons, :date_of_first_release, :shoot_location, :country, presence: true  

  has_many :reviews
  has_many :tv_season_person
	has_many :people, through: :tv_season_person

  belongs_to :genre

end
