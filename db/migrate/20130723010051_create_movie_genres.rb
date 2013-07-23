class CreateMovieGenres < ActiveRecord::Migration
  def change
    create_table :movie_genres do |t|
      t.integer :movie_id
      t.string :genre

      t.timestamps
    end

    add_foreign_key :movie_genres, :movies

    add_index :movie_genres, :movie_id
  end
end
