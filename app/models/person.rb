class Person < ApplicationRecord
	validates :name, presence: true

	has_many :tv_season_person
	has_many :tv_seasons, through: :tv_season_person
	has_many :roles, :through => :tv_season_person

end
