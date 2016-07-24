# == Schema Information
#
# Table name: artist_followers
#
#  id          :integer          not null, primary key
#  artist_id   :integer
#  follower_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class ArtistFollower < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :artist
  belongs_to :follower
end
