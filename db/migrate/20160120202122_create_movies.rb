class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.string :rated
      t.string :runtime
      t.string :genre
      t.string :director
      t.string :writer
      t.text :actors, array: true, default: []
      t.text :plot
      t.string :country
      t.text :awards, array: true, default: []
      t.string :imdbRating
      t.string :imdbID



    end
  end
end
