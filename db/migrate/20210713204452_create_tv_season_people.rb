class CreateTvSeasonPeople < ActiveRecord::Migration[6.1]
  def change
    create_table :tv_season_people do |t|
      t.integer :person_id, null: false
      t.integer :tv_season_id, null: false
      t.integer :role_id, null: false
      
      t.timestamps
    end
  end
end
