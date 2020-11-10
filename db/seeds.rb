# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Pet.destroy_all

puts "Beginning seeding"

10.times do
  Pet.create(
    name: Faker::Creature::Cat.name,
    address: Faker::Address.street_name,
    species: %w(dog cat bird turtle pig dragon).sample,
    found_on: Faker::Date.backward(days: 14)
    )
  end

puts "Finished seeding"
