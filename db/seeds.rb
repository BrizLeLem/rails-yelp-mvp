# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "098123456789", category: "chinese" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "0123456789", category: "chinese" }
entrecote = { name: "Entrecote", address: "26 Rue Rivoli, Paris", phone_number: "0123456400", category: "french" }
xinxun = { name: "Xin Xun", address: "45 Jap Streer, Tokyo", phone_number: "012345698789", category: "japanese" }
wathefuc = { name: "Wat De Fuk", address: "WTF Straße, Berlin", phone_number: "01111111111", category: "french" }

[ dishoom, pizza_east, entrecote, xinxun, wathefuc ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
