# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 11.times do |n|
#   name  = Faker::Name.name
#   email = "example-#{n+1}@railstutorial.org"
#   Client.create!(name:  name, email: email)
# end

# 5.times do |n|
#   brand  = ["Renault", "Mazda", "Honda", "Chevrolet", "Hyundai", "Toyota", "Nissan", "Fiat"].sample
#   plate = ["ABC", "DFG"].sample + (0..9).to_a.sample.to_s + (0..9).to_a.sample.to_s + (0..9).to_a.sample.to_s  
#   year = (1980..2017).to_a.sample
#   color = ["blue", "white", "red", "black", "green", "pink", "yellow", "gray"].sample

#   Vehicle.create!(brand:  brand, plate: plate, year: year, color: color)
# end

20.times do |n|
  name  = Faker::Address.city + " - " + Faker::Address.city
  distance = (100..5000).to_a.sample 
  time = (1..120).to_a.sample
  client_id = (1..11).to_a.sample
  vehicle_id = (1..5).to_a.sample
  
  Track.create!(name: name, distance: distance, time: time, client_id: client_id, vehicle_id: vehicle_id)
end