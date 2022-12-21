# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "faker"
Stroll.destroy_all
Dog.destroy_all
Dogsitter.destroy_all
City.destroy_all

cityList = []
dogList = []
dogsitterList = []

5.times do
    cityList.push(Faker::Address.city)
    dogList.push(Faker::Creature::Dog.name)
    dogsitterList.push(Faker::Name.name)
end

# Les villes doivent être créées avant
cityList.each do |city|
    City.create(name: city)
end

cityListLength = City.count

puts City.all
puts cityListLength

dogList.each do |dog|
    city = cityList[rand(cityListLength)]
    Dog.create(name: dog, city: City.find_by(name: city))
    puts city
end

dogsitterList.each do |dogsitter|
    Dogsitter.create(name: dogsitter, city: City.find_by(name: cityList[rand(cityListLength)]))
end

dogListLength = Dog.count
dogsitterListLength = Dogsitter.count

10.times do
    Stroll.create(dog: Dog.find_by(name: dogList[rand(dogListLength)]), dogsitter: Dogsitter.find_by(name: dogsitterList[rand(dogsitterListLength)]))
end