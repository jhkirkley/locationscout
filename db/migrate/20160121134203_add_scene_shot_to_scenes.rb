class AddSceneShotToScenes < ActiveRecord::Migration
  def change
    add_attachment :scenes, :scene_shot
  end
end
