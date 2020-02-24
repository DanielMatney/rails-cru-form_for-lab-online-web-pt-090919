class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.integer :artist_id
      t.integer :genre_id
      t.string :name

      t.timestamps
    end
  end
end
