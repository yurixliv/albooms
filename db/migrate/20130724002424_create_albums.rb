class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.datetime :duration
      t.integer :rating
      t.text :info
      t.string :cover_url

      t.timestamps
    end
  end
end
