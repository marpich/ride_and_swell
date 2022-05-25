# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
require "open-uri"

puts "cleanning db"
Equipment.destroy_all
User.destroy_all
puts "db clean"

puts "seeding users starting"
user1 = User.create(first_name: "yohann", last_name: "lemasson", email: "yohann@gmail.com", phone: "0606060601", password: "yohann")

user2 = User.create(first_name: "cedric", last_name: "le brun", email: "cedric@gmail.com", phone: "0606060602", password: "cedric")

user3 = User.create(first_name: "margaux", last_name: "pichard", email: "margaux@gmail.com", phone: "0606060603", password: "margaux")

user4 = User.create(first_name: "clement", last_name: "spiers", email: "clement@gmail.com", phone: "0606060604", password: "clement")
puts "seeding users done"

puts "seeding equipments surf starting"

equipment_surf_1 = Equipment.new(sport: "Surf", brand: "Tyler Warren", user: user1, price: 35, description: "superbe planche de surf pour un pur moment de plaisir en mer", board_size: 2.15, title: "planche surf", condition: "perfect", location: "La Baule")
file = URI.open('https://res.cloudinary.com/dciokrtia/image/upload/v1653395939/planche_surf_pvkwgu.jpg')
equipment_surf_1.photo.attach(io: file, filename: 'surf1.png', content_type: 'image/png')
equipment_surf_1.save!

equipment_surf_2 = Equipment.new(sport: "Surf", brand: "Decathlon", user: user2, price: 30, description: "bonne planche pour les debutants", board_size: 2.10, title: "surf decat bon etat", condition: "good", location: "Lacanau")
file = URI.open('https://res.cloudinary.com/dciokrtia/image/upload/v1653395939/planche_surf_pvkwgu.jpg')
equipment_surf_2.photo.attach(io: file, filename: 'surf2.png', content_type: 'image/png')
equipment_surf_2.save!

equipment_surf_3 = Equipment.new(sport: "Surf", brand: "7Oceans", user: user3, price: 32, description: "tres bonne planche pour de la grosse vague , tu vas vraiment aimer!", board_size: 2.12, title: "surf de qualité", condition: "good", location: "St Malo")
file = URI.open('https://res.cloudinary.com/dciokrtia/image/upload/v1653395939/planche_surf_pvkwgu.jpg')
equipment_surf_3.photo.attach(io: file, filename: 'surf3.png', content_type: 'image/png')
equipment_surf_3.save!

puts " seedint equipments surf done"

puts " seeding equipments paddle starting"
equipment_paddle_1 = Equipment.new(sport: "Paddle", brand: "Tyler Warren", user: user4, price: 40, description: "tu vas aimer sa tenue en mer , super agreable", board_size: 2.20, title: "paddle de qualité", condition: "medium", location: "La Baule")
file = URI.open('https://res.cloudinary.com/dciokrtia/image/upload/v1653397073/paddle_zdjv8a.jpg')
equipment_paddle_1.photo.attach(io: file, filename: 'paddle1.png', content_type: 'image/png')
equipment_paddle_1.save!

equipment_paddle_2 = Equipment.new(sport: "Paddle", brand: "Decathlon", user: user1, price: 38, description: "du plaisir , voila le mot d'ordre avec cette superbe planche ", board_size: 2.20, title: "paddle de pro je te promets", condition: "perfect", location: "Lacanau")
file = URI.open('https://res.cloudinary.com/dciokrtia/image/upload/v1653397073/paddle_zdjv8a.jpg')
equipment_paddle_2.photo.attach(io: file, filename: 'paddle2.png', content_type: 'image/png')
equipment_paddle_2.save!

equipment_paddle_3 = Equipment.new(sport: "Paddle", brand: "Sps", user: user2, price: 45, description: "la meilleur planche de paddle que tu puisse avoir le top du top ", board_size: 2.22, title: "paddle pour kiffer", condition: "perfect", location: "St Malo")
file = URI.open('https://res.cloudinary.com/dciokrtia/image/upload/v1653397073/paddle_zdjv8a.jpg')
equipment_paddle_3.photo.attach(io: file, filename: 'paddle3.png', content_type: 'image/png')
equipment_paddle_3.save!

puts " seeding equipments paddle done"

puts " seeding equipments kite surf starting"
equipment_kite_1 = Equipment.new(sport: "Kitesurf", brand: "Boardworks", user: user3, price: "55", description: "un petit plaisir en mer , utilise ce kite surf , un orgasme en mer", board_size: 2.05, sail_size: 12, title: "kite de fou je te promets", condition: "good", location: "La Baule")
file = URI.open('https://res.cloudinary.com/dciokrtia/image/upload/v1653396924/kitesurf_lqn065.jpg')
equipment_kite_1.photo.attach(io: file, filename: 'kite1.png', content_type: 'image/png')
equipment_kite_1.save!

equipment_kite_2 = Equipment.new(sport: "Kitesurf", brand: "Corsurf", user: user4, price: "50", description: "superbe planche franchement top pour mousser devant les filles à la plage", board_size: 2.08, sail_size: 9, title: "kite pour ce la raconter à la plage", condition: "medium", location: "Lacanau")
file = URI.open('https://res.cloudinary.com/dciokrtia/image/upload/v1653396924/kitesurf_lqn065.jpg')
equipment_kite_2.photo.attach(io: file, filename: 'kite2.png', content_type: 'image/png')
equipment_kite_2.save!

equipment_kite_3 = Equipment.new(sport: "Kitesurf", brand: "Decathlon", user: user1, price: "48", description: "je vous propose mon kite , je l'ai acheter mais je ne sais pas en faire donc je le loue ", board_size: 2.07, sail_size: 12, title: "kitesurf sympa", condition: "perfect", location: "St Malo")
file = URI.open('https://res.cloudinary.com/dciokrtia/image/upload/v1653396924/kitesurf_lqn065.jpg')
equipment_kite_3.photo.attach(io: file, filename: 'kite3.png', content_type: 'image/png')
equipment_kite_3.save!

puts " seeding equipments kite surf done"

puts " seeding equipments kayak starting"
equipment_kayak_1 = Equipment.new(sport: "Kayak", brand: "Ventura", user: user2, price: 40, description: "kayak gonflable , il y a une pompe , super agreable ", board_size: 3.30, title: "kayak super à 2", condition: "medium", location: "La Baule")
file = URI.open('https://res.cloudinary.com/dciokrtia/image/upload/v1653396014/kayak_puly48.jpg')
equipment_kayak_1.photo.attach(io: file, filename: 'kayak1.png', content_type: 'image/png')
equipment_kayak_1.save!

equipment_kayak_2 = Equipment.new(sport: "Kayak", brand: "Cove", user: user3, price: 42, description: "kayak gonflable , je le loue pour 1 semaine minimun  ", board_size: 3.20, title: "kayak super pour balade romantique", condition: "perfect", location: "Lacanau")
file = URI.open('https://res.cloudinary.com/dciokrtia/image/upload/v1653396014/kayak_puly48.jpg')
equipment_kayak_2.photo.attach(io: file, filename: 'kayak2.png', content_type: 'image/png')
equipment_kayak_2.save!

equipment_kayak_3 = Equipment.new(sport: "Kayak", brand: "Decathlon", user: user4, price: 38, description: "je l'ai acheter lété dernier il est impecable , super pour les enfants ,kayak gonflable  ", board_size: 3.25, title: "kayak avec jumelles pour mater sur la plage", condition: "good", location: "St Malo")
file = URI.open('https://res.cloudinary.com/dciokrtia/image/upload/v1653396014/kayak_puly48.jpg')
equipment_kayak_3.photo.attach(io: file, filename: 'kayak3.png', content_type: 'image/png')
equipment_kayak_3.save!

puts " seeding equipments kayak done"

puts " seeding equipments Wakeboard starting"
equipment_wake_1 = Equipment.new(sport: "Wakeboard", brand: "Prolix", user: user1, price: 60, description: "un petit plaisir en mer, vraiment genial ", board_size: 1.40, sail_size: 12, title: "wakeboard de fou", condition: "perfect", location: "La Baule")
file = URI.open('https://res.cloudinary.com/dciokrtia/image/upload/v1653397380/wakeboard_xjbojm.jpg')
equipment_wake_1.photo.attach(io: file, filename: 'wake1.png', content_type: 'image/png')
equipment_wake_1.save!

equipment_wake_2 = Equipment.new(sport: "Wakeboard", brand: "Vanity", user: user2, price: 58, description: "super pour un poid plume, femme ou enfant ", board_size: 1.36, sail_size: 6, title: "wakeboard vraiment sympa", condition: "medium", location: "Lacanau")
file = URI.open('https://res.cloudinary.com/dciokrtia/image/upload/v1653397380/wakeboard_xjbojm.jpg')
equipment_wake_2.photo.attach(io: file, filename: 'wake2.png', content_type: 'image/png')
equipment_wake_2.save!

equipment_wake_3 = Equipment.new(sport: "Wakeboard", brand: "Deacathlon", user: user3, price: 55, description: "vraiment super pour les vacances ou bien apprendre tranquillement", board_size: 1.40, sail_size: 12, title: "wakeboard pour apprendre", condition: "perfect", location: "St Malo")
file = URI.open('https://res.cloudinary.com/dciokrtia/image/upload/v1653397380/wakeboard_xjbojm.jpg')
equipment_wake_3.photo.attach(io: file, filename: 'wake3.png', content_type: 'image/png')
equipment_wake_3.save!

puts " seeding equipments Wakeboard done"

puts " seeding equipments Windsurf starting"
equipment_wind_1 = Equipment.new(sport: "Windsurf", brand: "Prolix", user: user4, price: 60, description: "un petit plaisir en mer, vraiment genial ", board_size: 2.20, sail_size: 9, title: "windsurf de fifou", condition: "good", location: "La Baule")
file = URI.open('https://res.cloudinary.com/dciokrtia/image/upload/v1653396262/windsurf_oiib2f.jpg')
equipment_wind_1.photo.attach(io: file, filename: 'wind1.png', content_type: 'image/png')
equipment_wind_1.save!

equipment_wind_2 = Equipment.new(sport: "Windsurf", brand: "Cove", user: user1, price: 65, description: "le top du top , fait pour les meilleurs", board_size: 2.20, sail_size: 12, title: "windsurf pour les pro", condition: "perfect", location: "Lacanau")
file = URI.open('https://res.cloudinary.com/dciokrtia/image/upload/v1653396262/windsurf_oiib2f.jpg')
equipment_wind_2.photo.attach(io: file, filename: 'wind2.png', content_type: 'image/png')
equipment_wind_2.save!

equipment_wind_3 = Equipment.new(sport: "Windsurf", brand: "Decathlon", user: user2, price: 62, description: "agreable pour les debutants", board_size: 2.10, sail_size: 9, title: "windsurf pour les debutants", condition: "medium", location: "St Malo")
file = URI.open('https://res.cloudinary.com/dciokrtia/image/upload/v1653396262/windsurf_oiib2f.jpg')
equipment_wind_3.photo.attach(io: file, filename: 'wind3.png', content_type: 'image/png')
equipment_wind_3.save!

puts " seeding equipments Windsurf done"
