class CreateArtistFollowers < ActiveRecord::Migration
  def change
    create_table :artist_followers do |t|
      t.integer :artist_id
      t.integer :follower_id

      t.timestamps
    end
  end
end
