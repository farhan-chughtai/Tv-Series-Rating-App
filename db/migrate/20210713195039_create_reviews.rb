class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :tv_season_id, null: false
      t.string :reviewer_name, null: false
      t.integer :rating, null: false
      t.text :review, null: false

      t.timestamps
    end
  end
end
