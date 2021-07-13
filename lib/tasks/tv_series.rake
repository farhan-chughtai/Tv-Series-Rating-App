require "csv"

namespace :tv_series do

  desc 'Import tv series'
  task import: :environment do
    actor_role = Role.find_by(name: "Actor")
    director_role = Role.find_by(name: "Director")

    filename = Rails.root.join("lib", "tv_series.csv")
    CSV.foreach(filename, :headers => true) do |row|
      genre = Genre.find_or_create_by(name: row["Genre"])
      director = Person.find_or_create_by(name: row["Director"])
      actor = Person.find_or_create_by(name: row["Actor"])
      tv_season = TvSeason.find_by(name: row["TV Series"])

      unless tv_season.present?
        tv_season = TvSeason.create(
          name: row["TV Series"], 
          genre_id: genre.id,
          no_seasons: row["No of seasons"],
          date_of_first_release: row["Date of First Release"],
          shoot_location: row["Shoot location"],
          country: row["Country"]
        )
      end
      TvSeasonPerson.find_or_create_by(person_id: actor.id, tv_season_id: tv_season.id, role_id: actor_role.id)
      TvSeasonPerson.find_or_create_by(person_id: director.id, tv_season_id: tv_season.id, role_id: director_role.id)
    end
  end

end