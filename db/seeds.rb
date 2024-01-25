# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'

30.times do
  Book.create(
    title: Faker::Book.title,
    author: Faker::Book.author,
    genre: Faker::Book.genre
  )

  Character.create(
    first_name: Faker::Games::DnD.first_name,
    last_name: Faker::Games::DnD.last_name,
    race: Faker::Games::DnD.race,
    klass: Faker::Games::DnD.klass,
    hit_points: 10 + (rand * 10).round
  )
end
