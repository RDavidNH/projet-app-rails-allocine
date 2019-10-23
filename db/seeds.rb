# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

#User.destroy_all

movie_genre = ["action", "horreur", "comédie", "drame"];

100.times do
  movie = Movie.create!(
    name: Faker::Book.title,
    year: Faker::Number.between(from: 1900, to: 2020),
    genre: movie_genre[rand(0..3)],
    synopsis: Faker::Lorem.sentence(word_count: 10, supplemental: true, random_words_to_add: 4),
    director: Faker::Book.author,
    allocine_rating: (Faker::Number.between(from: 1, to: 4).to_s + "." + Faker::Number.between(from: 0, to: 9).to_s).to_f,
    my_rating: nil,
    already_seen: false
  )
end
