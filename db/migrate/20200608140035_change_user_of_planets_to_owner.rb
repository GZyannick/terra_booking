class ChangeUserOfPlanetsToOwner < ActiveRecord::Migration[6.0]
  def change
    rename_column :planets, :user_id, :owner_id
  end
end
