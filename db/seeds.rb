# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'cleaning database...'
Booking.destroy_all
Review.destroy_all
Room.destroy_all
User.destroy_all

puts "adding users..."

new_user_joe = User.create(username: 'joe', email: 'joe@email.com', password: 'password', password_confirmation: 'password')
new_user_mathieu = User.create(username: 'mathieu', email: 'mathieu@email.com', password: 'password', password_confirmation: 'password')
new_user_ted = User.create(username: 'tedjenkins', email: 'ted@email.com', password: 'password', password_confirmation: 'password')
new_user_thief = User.create(username: 'maskedthief', email: 'maskedthief@email.com', password: 'password', password_confirmation: 'password')
new_user_rashon = User.create(username: 'rashon', email: 'rashon@email.com', password: 'password', password_confirmation: 'password')
new_user_kayla = User.create(username: 'Kayla', email: 'kayla@email.com', password: 'password', password_confirmation: 'password')
new_user_taka = User.create(username: 'taka537', email: 'taka@email.com', password: 'password', password_confirmation: 'password')
new_user_nico = User.create(username: 'nico218', email: 'nico@email.com', password: 'password', password_confirmation: 'password')
new_user_studio = User.create(username: 'sketchystudios', email: 'sketchystudios@email.com', password: 'password', password_confirmation: 'password')
new_user_ryo = User.create(username: 'ryo', email: 'kai@email.com', password: 'password', password_confirmation: 'password')

puts "adding rooms..."

new_room_dept = Room.new(
  name: 'Department Store',
  address: 'Tokyo, Shinjuku,Tomihisachō 8-19',
  story: 'In the heart of bustling Tokyo, there stood a remarkable refuge called "Shinsetsu Department Store." Nestled amidst
  the towering skyscrapers, a former place of fashion,
  it now offers a sanctuary for those burdened by the weight of toxic coworkers and unrelenting workplace stress. You can break the mannequins as you wish.
  You can also bring your own manequins.',
  description: 'Less fashion, more manequins (300 to be exact)',
  capacity: 2,
  price: 9000
)

new_room_jewl = Room.new(
  name: "Jewelry Shop",
  address: 'Gunma, Fujioka, Hongo, 876-4',
  story: "Tried to buy an engagement ring from here but it was too expensive. Let's liberate all their rings from them",
  description: "Shiny, expensive, and read to be destroyed",
  capacity: 5,
  price: 12000
)

new_room_flat = Room.new(
  name: "Ted Jenkins' Uptown Flat",
  address: 'Ibaraki, Hitachi, Kashimacho, 1-20',
  story: "I spent a lot of money on this flat so I could invite friends over, and noone wants to hang out with me, so its going to waste. If you're down we can watch some movies and have pizza first! Please hang out with me.",
  description: "Small flat with big potential",
  capacity: 4,
  price: 2000
)

new_room_bf = Room.new(
  name: "My ex-boyfriend's apartment. Go to hell Charlie",
  address: 'Kanagawa, Yokohama, Naka, Chojamachi, 4-11-14',
  story: 'Let it be known that Charlie is a total dickbag. Destroy all the expensive crap in this appartment. Destroy the cheap stuff too. You can also bring
  your own expensive stuff. All I ask is that you let me watch and maybe bring some wine.',
  description: "Caught my bf cheating on me. Destroy his nice apartment.",
  capacity: 2,
  price: 1000
)

new_room_apple = Room.new(
  name: 'Apple Store',
  address: 'Tokyo, Chuo, Ginza, 8-9-7',
  story: "Can't afford Apple's expensive stuff? Bought an iPad that's end-of-life a year after release? Come here and destroy everything.
  All the devices are functional. Please try them before!",
  description: "Apple Devices are planned obsolescence. Let's make their store obsolete too.",
  capacity: 2,
  price: 7000
)


new_room_outdoor = Room.new(
  name: "The Great Outdoors",
  address: '350-0417, Kofu-shi, Yamanshi',
  story: "Why are you clicking here? Nature didn't do anything to you. What is wrong with you? You really wanna destroy the environment?
  Fine, but the forest may have something else in mind...",
  description: "Let your stress go wild",
  capacity: 10,
  price: 12000
)

new_room_office = Room.new(
  name: "Office Space",
  address: '105-8315, Kaigan, Minato-ku, Tokyo',
  story: "We've rented this office from WeWork for you to destroy. There are stacks of paperwork and lots of laptops with
  important files. This'll teach those jerks in management to remove work-from-home privileges",
  description: "Layoff? More like Slayoff",
  capacity: 5,
  price: 7000
)

new_room_japan = Room.new(
  name: 'Japanese pottery',
  address: 'Tochigi, Utsunomiya, Chuo, 5-1-14',
  story: 'This room is filled with fragile japanese pottery, painstakingly hand-crafted by Hiro Nakamura and displayed at
  the Tokyo museum of pottery. Come here to destroy everything and awake you soul.',
  description: "Containing Pottery crafted by the legendary Hiro Nakamura",
  capacity: 2,
  price: 7000
)

new_room_warehouse = Room.new(
  name: 'Warehouse',
  address: 'Chiba, Futtsu, Aoki, 1-5-1',
  story: 'This room  was an old warehouse that was converted into a break room. It is located in the heart of the city.
  A lot of people died here because of the toxic fumes. The previous owner was never found.',
  description: 'This room contains a lot of old furniture. You can break them as you wish. You can also bring your own
   furniture',
  capacity: 2,
  price: 5000
)

new_room_arcade = Room.new(
  name: 'Arcade',
  address: 'Kanagawa, Yokosuka, Fukadadai, 50',
  story: "The only gamers here now are ghosts. There are many tools at your disposal. Use bats, hammers, your fists, whatever is laying around!",
  description: "A defunct Game center",
  capacity: 2,
  price: 5000
)

room_array = [
  new_room_dept,
  new_room_jewl,
  new_room_flat,
  new_room_bf,
  new_room_apple,
  new_room_outdoor,
  new_room_office,
  new_room_japan,
  new_room_warehouse,
  new_room_arcade
]

new_room_dept.user = new_user_joe
new_room_jewl.user = new_user_mathieu
new_room_flat.user = new_user_ted
new_room_bf.user = new_user_kayla
new_room_apple.user = new_user_studio
new_room_office.user = new_user_studio
new_room_japan.user = new_user_studio
new_room_warehouse.user = new_user_studio
new_room_arcade.user = new_user_studio

room_array.each { |room| room.save }

user_array = [
  new_user_joe,
  new_user_mathieu,
  new_user_ted,
  new_user_thief,
  new_user_rashon,
  new_user_kayla,
  new_user_taka,
  new_user_nico,
  new_user_studio,
  new_user_ryo
]

# room_array = [
#   new_room_dept,
#   new_room_jewl,
#   new_room_flat,
#   new_room_bf,
#   new_room_apple,
#   new_room_outdoor,
#   new_room_office,
#   new_room_japan,
#   new_room_warehouse,
#   new_room_arcade
# ]

booking1 = Booking.new(date: Date.new(2023, 5, 1), number_of_people: 2)
booking1.user = new_user_joe
booking1.room = new_room_apple
booking1.save
review1 = Review.new(content: "man i was so happy to destroy the new iphone 14, i mean i just bought the 13 so...")
review1.user = new_user_joe
review1.room = new_room_apple
review1.save

booking2 = Booking.new(date: Date.new(2023, 4, 1), number_of_people: 2)
booking2.user = new_user_kayla
booking2.room = new_room_flat
booking2.save
review2 = Review.new(content: "Ted is actually a nice guy, he let me destroy his living room, then we watched netflix")
review2.user = new_user_kayla
review2.room = new_room_flat
review2.save

# booking3 = Booking.new(date: Time.now, number_of_people: 2)
# booking3.user = new_user_rashon
# booking3.room = new_room_outdoor
# booking3.save
# review3 = Review.new(content: "No one told me there was a bear.")
# review3.user = new_user_rashon
# review3.room = new_room_outdoor
# review3.save

# booking4 = Booking.new(date: Date.new(2023, 2, 13), number_of_people: 2)
# booking4.user = new_user_nico
# booking4.room = new_room_outdoor
# booking4.save
# review4 = Review.new(content: "It was fun until the bear at my legs.")
# review4.user = new_user_nico
# review4.room = new_room_outdoor
# review4.save

new_room_dept.photo.attach(
  filename: 'Mexico-Mannequin',
  io: URI.open('https://res.cloudinary.com/dfv1szuzs/image/upload/v1684292577/Mexico-Mannequin-Plus-Size-Mannequin-with-Matt-Black-or-White-Color_i3itob.webp')
)

new_room_warehouse.photo.attach(
  filename: 'warehouse-break-room.jpg',
  io: URI.open('https://res.cloudinary.com/dfv1szuzs/image/upload/v1684293493/photo-1473023914974-0d98f0798b51_pzolsv.jpg')
)

new_room_bf.photo.attach(
  filename: 'fancy-appartment.jpg',
  io: URI.open('https://res.cloudinary.com/dfv1szuzs/image/upload/v1684293506/photo-1512914890251-2f96a9b0bbe2_tzqnkt.jpg')
)

new_room_arcade.photo.attach(
  filename: 'arcade.jpg',
  io: URI.open('https://res.cloudinary.com/dfv1szuzs/image/upload/v1684293467/photo-1553640627-57a6de3bf0ff_lxrhp5.jpg')
)

new_room_apple.photo.attach(
  filename: 'apple-store.jpg',
  io: URI.open('https://res.cloudinary.com/dfv1szuzs/image/upload/v1684293521/NY_Interior_2284_fp706720_gizy0g.jpg')
)

new_room_japan.photo.attach(
  filename: 'jpn-pottery.jpg',
  io: URI.open('https://res.cloudinary.com/dfv1szuzs/image/upload/v1684307998/main03_nwvnnp.jpg')
)

new_room_flat.photo.attach(
  filename: 'small-apt.jpg',
  io: URI.open('https://res.cloudinary.com/dfv1szuzs/image/upload/v1684378669/pexels-amina-filkins-5425123_witoki.jpg')
)

new_room_jewl.photo.attach(
  filename: 'jewelry-store.jpg',
  io: URI.open('https://res.cloudinary.com/dfv1szuzs/image/upload/v1684378675/pexels-yasemin-durmus-14789188_t775t6.jpg')
)

new_room_office.photo.attach(
  filename: 'office.jpg',
  io: URI.open('https://res.cloudinary.com/dfv1szuzs/image/upload/v1684473218/pexels-marc-mueller-380768_pylnxg.jpg')
)

new_room_outdoor.photo.attach(
  filename: 'outdoors.jpg',
  io: URI.open('https://res.cloudinary.com/dfv1szuzs/image/upload/v1684473231/pexels-francisco-cornellana-castells-1062057_jth13h.jpg')
)
