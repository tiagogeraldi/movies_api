class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :user_id
      t.integer :movie_id

      t.timestamps
    end

    add_foreign_key :likes, :users
    add_foreign_key :likes, :movies

    add_index :likes, :user_id
    add_index :likes, :movie_id
  end
end
