class RemoveReviewColumn < ActiveRecord::Migration[6.1]
  def change
    remove_column :reviews, :review, :text
  end
end
