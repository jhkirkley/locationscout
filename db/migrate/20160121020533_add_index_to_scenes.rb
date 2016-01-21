class AddIndexToScenes < ActiveRecord::Migration
  def change
    add_index :scenes, [:user_id, :created_at]
  end
end
