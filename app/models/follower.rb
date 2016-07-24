# == Schema Information
#
# Table name: followers
#
#  id           :integer          not null, primary key
#  phone_number :string
#  created_at   :datetime
#  updated_at   :datetime
#

class Follower < ActiveRecord::Base
  # Remember to create a migration!
  has_many :artist_followers
  has_many :artists, through: :artist_followers
end
