# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  { name: 'Dragon', address: 'Theresianumgasse', category: 'chinese', phone_number: '73950093402394' },
  { name: 'Pizza House', address: 'Weyringergasse', category: 'italian', phone_number: '312121341' },
  { name: 'Tokyo Ramen', address: 'Carlsplatz', category: 'japanese', phone_number: '349233493402394' },
  { name: 'Paris petit', address: 'Linz', category: 'french', phone_number: '34234324' },
  { name: 'Waffles', address: 'Vienna', category: 'belgian', phone_number: '324234525' }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
