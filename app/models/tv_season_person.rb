class TvSeasonPerson < ApplicationRecord
  validates :person_id, :tv_season_id, :role_id, presence: true
  validates :person_id, uniqueness: { scope: [:tv_season_id, :role_id] }

  belongs_to :person
  belongs_to :tv_season
  belongs_to :role
end
