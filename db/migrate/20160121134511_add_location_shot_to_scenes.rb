class AddLocationShotToScenes < ActiveRecord::Migration
  def change
    add_attachment :scenes, :location_shot
  end
end
