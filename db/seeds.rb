# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

if Rails.env.development?
  puts "Cleaning database..."
  Car.destroy_all
end

puts "Creating DB..."
puts "Creating cars..."

Lexus_LS = Car.create!({ brand: 'Lexus', model: 'LS', price_per_day: 95, current_location: 'Atlanta', rental_status: 'available'})
Renault_Espace = Car.create!({ brand: 'Renault', model: 'Espace', price_per_day: 95, current_location: 'Cleveland', rental_status: 'available'})
Cadillac_Escalade = Car.create!({ brand: 'Cadillac', model: 'Escalade', price_per_day: 135, current_location: 'Detroit', rental_status: 'available'})
Cadillac_Lowrider = Car.create!({ brand: 'Cadillac', model: 'Lowrider', price_per_day: 135, current_location: 'Los Angeles', rental_status: 'available'})
Fiat_Punto = Car.create!({ brand: 'Fiat', model: 'Punto', price_per_day: 65, current_location: 'Seattle', rental_status: 'rented'})
95.times do
  car = Car.create!({ brand: Faker::Vehicle.make, model: Faker::Vehicle.model, price_per_day: rand(55..145).round, current_location: Faker::Address.city, rental_status: ['available', 'rented'].sample })
end
puts "Cars added!"

puts "Creating locations..."
20.times do
  location = Location.create!({ agency_name: Faker::Company.name, city: Faker::Address.city})
end

puts "Locations created"
puts "Creating users..."
100.times do
  user = User.create!({ first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, date_of_birth: Faker::Date.birthday})
end
