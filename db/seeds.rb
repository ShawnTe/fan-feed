require 'faker'

performers_path = APP_ROOT.join('db', 'performers.json')
performers = JSON.parse(File.read(performers_path))

performers.each do |performer|
  Artist.create(
    name: performer["name"],
    stage: performer["stage"],
    phone_number: Faker::PhoneNumber.phone_number
  )
end

