# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning the Database"
User.destroy_all
Ware.destroy_all

puts "Generating legendary users"
g = User.create(name: 'Gandalf', c_class: 'Wizard', password: 'melon123', email: 'ogmage@gmail.com')
a = User.create(name: 'Aragorn', c_class: 'Ranger', password: 'melon123', email: 'theranger@gmail.com')
b = User.create(name: 'Bilbo', c_class: 'Ringbearer', password: 'melon123', email: 'shire@gmail.com')
ar = User.create(name: 'Arwen', c_class: 'Spellblade', password: 'melon123', email: 'horsey@gmail.com')
gm = User.create(name: 'Gimli', c_class: 'Warrior', password: 'melon123', email: 'mountain@gmail.com')
l = User.create(name: 'Legolas', c_class: 'Archer', password: 'melon123', email: 'perfect@gmail.com')

puts "Generating legendary wares"
w1 = Ware.create(name: 'Narsil', description: 'The sword of the king of Gondor and Arnor', price: 100, user: a, picture_url: '')
w2 = Ware.create(name: 'Bow of Legolas', description: 'You cannot miss with this bow!', price: 100, user: l, picture_url: '')
w3 = Ware.create(name: 'The one Ring', description: 'One Ring to rule them all', price: 100, user: b, picture_url: '')
w5 = Ware.create(name: 'Sting', description: 'More like a knife than a proper sword', price: 100, user: b, picture_url: '')
w4 = Ware.create(name: 'Glamdring', description: 'The legendary Foehammer of the former king of Gondolin', price: 100, user: g, picture_url: '')
w6 = Ware.create(name: 'Gandalfs staff', description: 'The staff of the greatest wizard of all time', price: 100, user: g, picture_url: '')

