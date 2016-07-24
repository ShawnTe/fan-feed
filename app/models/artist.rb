class Artist < ActiveRecord::Base
  # Remember to create a migration!
  has_many :artist_followers
  has_many :followers, through: :artist_followers
end
