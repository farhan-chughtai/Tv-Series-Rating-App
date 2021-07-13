class CreateTvSeasons < ActiveRecord::Migration[6.1]
  def change
    create_table :tv_seasons do |t|
      t.string :name, null: false
      t.integer :genre_id, null: false
      t.integer :no_seasons, null: false
      t.datetime :date_of_first_release, null: false
      t.integer :director_id, null: false
      t.integer :actor_id, null: false
      t.string :shoot_location, null: false
      t.string :country, null: false

      t.timestamps
    end
  end
end
