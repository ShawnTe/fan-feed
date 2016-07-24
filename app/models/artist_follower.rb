class ArtistFollower < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :artist
  belongs_to :follower
end
