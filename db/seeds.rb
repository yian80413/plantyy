# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "creating User"

user1 = User.create!(
  first_name: "Yi-An",
  last_name: "Ko",
  username:"yian",
  email: "yian80413@gmail.com",
  address: "Berlin 1",
  password: "123456"
)


plant1 = Plant.create!(
  name: "Monstera",
  plant_url: "https://images.unsplash.com/photo-1617173944883-6ffbd35d584d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8bW9uc3RlcmF8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60"
)

plant2 = Plant.create!(
  name: "Rubber tree",
  plant_url: "https://images.unsplash.com/photo-1477554193778-9562c28588c0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cnViYmVyJTIwdHJlZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60"
)

puts 'Creating my garden ...'
garden1 = MyGarden.create!(
  user: user1,)


puts 'Creating garden kits...'

GardenKit.create!(
  kit_name: "British garden",
  plants: [plant1],
  my_garden: garden1,
  kit_url: "https://images.unsplash.com/photo-1558293842-c0fd3db86157?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Z2FyZGVufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60"
)

# GardenKit.create!(
#   kit_name: "Hello Spring",
#   plants: [plant2],

#   kit_url: "https://images.unsplash.com/photo-1490750967868-88aa4486c946?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c3ByaW5nfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60"
# )

puts 'Finished!'
