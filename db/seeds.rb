# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Rails.env.development?
  puts "Cleaning database..."
  Car.destroy_all
end

puts "Creating DB..."
puts "Creating Cars..."

Lexus_LS = Car.create({ brand: 'Lexus', model: 'LS', price_per_day: 95, current_location: 'Atlanta', rental_status: 'available'})
# Lexus_LS.save!
Renault_Espace = Car.create({ brand: 'Renault', model: 'Espace', price_per_day: 95, current_location: 'Cleveland', rental_status: 'available'})
# Renault_Espace.save!
Cadillac_Escalade = Car.create({ brand: 'Cadillac', model: 'Escalade', price_per_day: 135, current_location: 'Detroit', rental_status: 'available'})
# Cadillac_Escalade.save!
Cadillac_Lowrider = Car.create({ brand: 'Cadillac', model: 'Lowrider', price_per_day: 135, current_location: 'Los Angeles', rental_status: 'available'})
# Cadillac_Lowrider.save!
Fiat_Punto = Car.create({ brand: 'Fiat', model: 'Punto', price_per_day: 65, current_location: 'Seattle', rental_status: 'rented'})
# Fiat_Punto.save!

puts "Cars added!"
