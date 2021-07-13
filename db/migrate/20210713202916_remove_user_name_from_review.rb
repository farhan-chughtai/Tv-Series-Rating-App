class RemoveUserNameFromReview < ActiveRecord::Migration[6.1]
  def change
    remove_column :reviews, :reviewer_name, :string
  end
end
