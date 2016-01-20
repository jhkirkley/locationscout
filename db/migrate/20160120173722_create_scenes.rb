class CreateScenes < ActiveRecord::Migration
  def change
    create_table :scenes do |t|
      t.string :name
      t.string :movie_id
      t.string :user_id
      t.datetime :created_at
      t.datetime :updated_at
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
  end
end
