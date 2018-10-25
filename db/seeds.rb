require 'faker'

10.times do |city|
  city = City.create!(name: Faker::Address.city)
end

10.times do |dog|
  dog = Dog.create!(name: Faker::Dog.name, city_id: City.all.sample.id)
end

10.times do |dogsitter|
  dogsitter = Dogsitter.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: City.all.sample.id)
end

10.times do |stroll|
  stroll = Stroll.create!(date: Faker::Date.between(2.days.ago, Date.today), dog_id: Dog.all.sample.id, dogsitter_id: Dogsitter.all.sample.id)
end
