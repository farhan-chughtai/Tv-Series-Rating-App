class RemoveActorIdDirectorIdFromTvSeries < ActiveRecord::Migration[6.1]
  def change
    remove_column :tv_seasons, :actor_id, :integer
    remove_column :tv_seasons, :director_id, :integer
  end
end
