class CreateUserReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :user_reviews do |t|
      t.integer :user_id, null: false
      t.integer :review_id, null: false

      t.timestamps
    end
  end
end