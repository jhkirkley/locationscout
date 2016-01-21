class CreateScenes < ActiveRecord::Migration
  def change
    create_table :scenes do |t|
      t.string :name
      t.references :user, index: true, foreign_key: true
      t.references :movie, index: true, foreign_key: true
      t.text :description
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :what
      t.string :icon
      t.float :latitude
      t.float :longitude
      t.timestamps null: false
    end
    add_index :scenes, [:user_id, :created_at]
  end
end


