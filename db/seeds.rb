# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

# file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
# article = Article.new(title: "NES", body: "A great console")
# article.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
# article.save



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
w1_file = URI.open("https://cdnb.artstation.com/p/assets/images/images/024/229/907/large/cleber-moretti-narsil-01-ed.jpg?1581943382")
w1 = Ware.create(name: 'Narsil', description: 'The sword of the king of Gondor and Arnor', price: 250, user: a, picture_url: '')
w1.photos.attach(io: w1_file, filename: 'narsil.png', content_type: 'image/png')
w1.save

w2_file = URI.open("https://i.pinimg.com/736x/ff/e0/90/ffe090dfa9eb6816e06ef27e7ebe94df.jpg")
w2 = Ware.create(name: 'Bow of Legolas', description: 'You cannot miss with this bow!', price: 200, user: l, picture_url: '')
w2.photos.attach(io: w2_file, filename: 'bow.png', content_type: 'image/png')
w2.save

w3_file = URI.open("https://images.squarespace-cdn.com/content/v1/59eb38af8c56a88932c45631/1556629944066-12XYONY27XKLNXU5BJVL/The-One-Ring-Web.jpg?format=1000w")
w3 = Ware.create(name: 'The one Ring', description: 'One Ring to rule them all', price: 1000000, user: b, picture_url: '')
w3.photos.attach(io: w3_file, filename: "theone.jpeg", content_type: "image/jpg")
w3.save

w5_file = URI.open("https://cdna.artstation.com/p/assets/images/images/005/868/906/large/chase-miller-swords.jpg?1494349335")
w5 = Ware.create(name: 'Sting', description: 'More like a knife than a proper sword', price: 100, user: b, picture_url: '')
w5.photos.attach(io: w5_file, filename: "sting.png", content_type: "image/png")
w5.save

w4_file = URI.open("https://cdn.reliks.com/products/5428/1200x0/glamdring-hilt.jpg")
w4 = Ware.create(name: 'Glamdring', description: 'The legendary Foehammer of the former king of Gondolin', price: 350, user: g, picture_url: '')
w4.photos.attach(io: w4_file, filename: "glamdring.jpeg", content_type: "image/jpg")
w4.save

w6_file = URI.open("https://cdnb.artstation.com/p/assets/images/images/013/564/643/large/ruben-dias-pau6.jpg?1540200200")
w6 = Ware.create(name: 'Gandalfs staff', description: 'The staff of the greatest wizard of all time', price: 50, user: g, picture_url: '')
w6.photos.attach(io: w6_file, filename: "staff.png", content_type: "image/png")
w6.save

w7_file = URI.open("https://www.outfit4events.de/runtime/cache/images/redesignProductFull/uc1298.jpg")
w7 = Ware.create(name: 'Hadhafang', description: 'The perfect elven princess blade', price: 300, user: gm, picture_url: '')
w7.photos.attach(io: w7_file, filename: "hadhafang.jpeg", content_type: "image/jpg")
w7.save
