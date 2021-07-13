class AddReviewColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :user_reviews, :review_text, :text
  end
end
