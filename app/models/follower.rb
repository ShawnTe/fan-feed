class Follower < ActiveRecord::Base
  # Remember to create a migration!
  has_many :artist_followers
  has_many :artists, through: :artist_followers, source: :artists
end
