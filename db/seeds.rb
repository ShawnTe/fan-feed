require 'faker'
10.times do
  Artist.create(name: Faker::Name.name, stage: ["right", "left"].sample, phone_number: Faker::PhoneNumber.phone_number,)
end

100.times do
  Follower.create(phone_number: Faker::PhoneNumber.phone_number)
end

100.times do
  ArtistFollower.create(artist_id: rand(1..10), follower_id: rand(1..100))
end
