# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "belgian"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category:"italian"}
little_paris =  {name: "Little Paris", address: "Setagaya, 29-4 Shindaita", category: "french"}
the_great_wall =  {name: "The Great Wall", address: "Shibuya, 22-5 Dogenzaka", category: "chinese"}
gyoza_world =  {name: "Gyoza World", address: "Suginami, 32-1 Hamadayama", category: "japanese"}

[dishoom, pizza_east, little_paris, the_great_wall, gyoza_world].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Finished!"
