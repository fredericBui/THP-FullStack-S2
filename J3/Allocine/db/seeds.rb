# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
require 'faker'

Movie.destroy_all

genre = ["action", "horreur", "comédie", "drame"]

50.times do |index|
    Movie.create(
        name: Faker::Movie.title, 
        year: rand(1900..2020), 
        genre: genre[ rand( genre.length() ) ], 
        synopsis: Faker::Lorem.sentence(word_count: 10),
        director: Faker::Name.first_name + " " + Faker::Name.last_name,
        allocine_rating: rand(0..5),
        my_rating: nil,
        already_seen: false
    )
end

puts "50 films ajoutés via Faker"