require "csv"

namespace :reviews do

  desc 'Import tv series'
  task import: :environment do

    filename = Rails.root.join("lib", "reviews.csv")
    CSV.foreach(filename, :headers => true) do |row|
      user = User.find_or_create_by(name: row["User"])
      tv_season = TvSeason.find_by(name: row["TV Series"])
      r = Review.find_or_create_by(tv_season_id: tv_season.id, rating: row["Stars"].to_i)
      UserReview.find_or_create_by(user_id: user.id, review_id: r.id, review_text: row["Review"] == "Empty" ? "" : row["Review"])
    end
  end

end