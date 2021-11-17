puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
mcdo = { name: "McDo", address: "Lille", phone_number: "0102030405", category:"french" }
quick =  { name: "Quick", address: "Tourcoing", phone_number: "0102030405", category:"chinese" }
kfc =  { name: "KFC", address: "Paris", phone_number: "0102030405", category:"japanese" }
gur =  { name: "Gur", address: "Tourcoing", phone_number: "0102030405", category:"italian" }
pizza =  { name: "Pizza", address: "Charleroi", phone_number: "0102030405", category:"belgian" }


[ mcdo, quick, kfc, gur, pizza ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
