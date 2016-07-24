# == Schema Information
#
# Table name: artists
#
#  id           :integer          not null, primary key
#  name         :string
#  stage        :string
#  phone_number :string
#  created_at   :datetime
#  updated_at   :datetime
#

class Artist < ActiveRecord::Base
  # Remember to create a migration!
  has_many :artist_followers
  has_many :followers, through: :artist_followers
end
