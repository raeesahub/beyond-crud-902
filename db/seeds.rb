puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
100.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_name,
    rating: rand(1..5),
    chef_name: ['Gordon Ramsay', 'Marco Pierre White', 'Nigella Lawson', 'Alain Ducasse'].sample
  )
  puts "Creating restaurant with id #{restaurant.id}"
end

puts "Finished!"
