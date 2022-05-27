# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
require "open-uri"

puts "cleanning db"
Booking.destroy_all
Equipment.destroy_all
User.destroy_all
puts "db clean"

puts "seeding users starting"
user1 = User.new(first_name: "Yohann", last_name: "Lemasson", email: "yohann@gmail.com", phone: "0606060601", password: "yohann")
file = URI.open('https://res.cloudinary.com/dciokrtia/image/upload/v1653653450/yohann-photo_mkgyhl.jpg')
user1.photo.attach(io: file, filename: 'user1.png', content_type: 'image/png')
user1.save!

user2 = User.new(first_name: "Cedric", last_name: "Le Brun", email: "cedric@gmail.com", phone: "0606060602", password: "cedric")
file = URI.open('https://res.cloudinary.com/dciokrtia/image/upload/v1653653052/photo-c%C3%A9dric_h6m7dd.jpg')
user2.photo.attach(io: file, filename: 'user2.png', content_type: 'image/png')
user2.save!

user3 = User.new(first_name: "Margaux", last_name: "Pichard", email: "margaux@gmail.com", phone: "0606060603", password: "margaux")
file = URI.open('https://res.cloudinary.com/dciokrtia/image/upload/v1653653443/photo-margaux_gr8cjn.jpg')
user3.photo.attach(io: file, filename: 'user3.png', content_type: 'image/png')
user3.save!

user4 = User.new(first_name: "Clement", last_name: "Spiers", email: "clement@gmail.com", phone: "0606060604", password: "clement")
file = URI.open('https://res.cloudinary.com/dciokrtia/image/upload/v1653653447/clement-photo_q5bl5h.png')
user4.photo.attach(io: file, filename: 'user4.png', content_type: 'image/png')
user4.save!

puts "seeding users done"

puts "seeding equipments surf starting"

equipment_surf_1 = Equipment.new(sport: "Surf", brand: "SIC", user: user1, price: 35, description: "Planche SIC MAUI DRIFTER 7'10 2022", board_size: 7.10, title: "Planche Surf Longboard", condition: "Comme neuf", location: "La Baule")
file = URI.open('https://res.cloudinary.com/dciokrtia/image/upload/v1653641862/drifter-7-10_bu1bg2.jpg')
equipment_surf_1.photo.attach(io: file, filename: 'surf1.png', content_type: 'image/png')
equipment_surf_1.save!

equipment_surf_2 = Equipment.new(sport: "Surf", brand: "Yuyo", user: user2, price: 30, description: "Très stable et flottante, elle permet à tous de découvrir la glisse éco-responsable", board_size: 7.0, title: "Planche Marlin 7'0 Mini-Malibu", condition: "Très bon état", location: "Saint Nazaire")
file = URI.open('https://res.cloudinary.com/dciokrtia/image/upload/v1653643007/yuyo_leyrgb.avif')
equipment_surf_2.photo.attach(io: file, filename: 'surf2.png', content_type: 'image/png')
equipment_surf_2.save!

equipment_surf_3 = Equipment.new(sport: "Surf", brand: "Victory", user: user3, price: 32, description: "Planche parfaite pour débuter et progresser en toute sécurité", board_size: 6.0, title: "Victory Softboard EPS", condition: "Comme neuf", location: "Pornic")
file = URI.open('https://res.cloudinary.com/dciokrtia/image/upload/v1653643794/surfvert_ybundz.webp')
equipment_surf_3.photo.attach(io: file, filename: 'surf3.png', content_type: 'image/png')
equipment_surf_3.save!

puts " seedint equipments surf done"

puts " seeding equipments paddle starting"
equipment_paddle_1 = Equipment.new(sport: "Paddle", brand: "Gong", user: user4, price: 60, description: "Paddle gonflable, très stable, possibilité d'ajouter deux dérives", board_size: 14, title: "Paddle Gong Modèle Couine Marie", condition: "Bon état", location: "Jullouville")
file = URI.open('https://res.cloudinary.com/dciokrtia/image/upload/v1653489202/paddle_ims_q88j3n.jpg')
equipment_paddle_1.photo.attach(io: file, filename: 'paddle1.png', content_type: 'image/png')
equipment_paddle_1.save!

equipment_paddle_2 = Equipment.new(sport: "Paddle", brand: "Tahe", user: user1, price: 45, description: "Le Stand Up Paddle rigide beach cross est solide, très stable et facile, pour des gabarits autour de 80 kg, pour pratiquer la balade ou prendre des petites vagues - 195L", board_size: 10, title: "Paddle rigide Outdoor Beach Cross de Tahe Decathlon", condition: "Bon état", location: "Carolles")
file = URI.open('https://res.cloudinary.com/dciokrtia/image/upload/v1653489202/paddle_ims_q88j3n.jpg')
equipment_paddle_2.photo.attach(io: file, filename: 'paddle2.png', content_type: 'image/png')
equipment_paddle_2.save!

equipment_paddle_3 = Equipment.new(sport: "Paddle", brand: "Itiwit", user: user2, price: 25, description: "Un Stand Up Paddle (SUP) gonflable aux dimensions généreuses, très stable et facile, pour des gabarits entre 60 et 80 kg, pour pratiquer la balade ou prendre des petites vagues.", board_size: 10, title: "Paddle gonflable de randonnée débutant", condition: "Etat d'usage", location: "Lancieux")
file = URI.open('https://res.cloudinary.com/dciokrtia/image/upload/v1653489202/paddle_ims_q88j3n.jpg')
equipment_paddle_3.photo.attach(io: file, filename: 'paddle3.png', content_type: 'image/png')
equipment_paddle_3.save!

puts " seeding equipments paddle done"

puts " seeding equipments kite surf starting"
equipment_kite_1 = Equipment.new(sport: "Kitesurf", brand: "Gong", user: user3, price: "85", description: "Aile 2021/2022 mono latte légère et très maniable. Très peu de sorties à son actif", board_size: 5.4, sail_size: 12, title: "Aile Gong Modèle Unik", condition: "Comme neuf", location: "Granville")
file = URI.open('https://res.cloudinary.com/dciokrtia/image/upload/v1653396924/kitesurf_lqn065.jpg')
equipment_kite_1.photo.attach(io: file, filename: 'kite1.png', content_type: 'image/png')
equipment_kite_1.save!

equipment_kite_2 = Equipment.new(sport: "Kitesurf", brand: "North", user: user4, price: "70", description: "Aile Carve de North, aussi bien en freeride que dans les vagues. ", board_size: 5.4, sail_size: 9, title: "Kite North Carve Verte", condition: "Bon état", location: "Avranches")
file = URI.open('https://res.cloudinary.com/dciokrtia/image/upload/v1653396924/kitesurf_lqn065.jpg')
equipment_kite_2.photo.attach(io: file, filename: 'kite2.png', content_type: 'image/png')
equipment_kite_2.save!

equipment_kite_3 = Equipment.new(sport: "Kitesurf", brand: "Orao", user: user1, price: "55", description: "Conçue pour le rider autonome qui cherche une aile performance freeride pour naviguer, en twin tip, surf, ou Foil.", board_size: 5.4, sail_size: 5, title: "Kite Performance & Freeride", condition: "Très bon état", location: "St Malo")
file = URI.open('https://res.cloudinary.com/dciokrtia/image/upload/v1653396924/kitesurf_lqn065.jpg')
equipment_kite_3.photo.attach(io: file, filename: 'kite3.png', content_type: 'image/png')
equipment_kite_3.save!

puts " seeding equipments kite surf done"

puts " seeding equipments kayak starting"
equipment_kayak_1 = Equipment.new(sport: "Kayak", brand: "RTM", user: user2, price: 40, description: "Idéal pour la famille, il sera votre compagnon parfait en mer comme en rivière", title: "Kayak Ocean Duo - RTM", condition: "Très bon état", location: "Dinard")
file = URI.open('https://res.cloudinary.com/dciokrtia/image/upload/v1653645188/kayak-ocean-duo-rtm_labnpz.jpg')
equipment_kayak_1.photo.attach(io: file, filename: 'kayak1.png', content_type: 'image/png')
equipment_kayak_1.save!

equipment_kayak_2 = Equipment.new(sport: "Kayak", brand: "RTM", user: user3, price: 42, description: "Kayak de randonnée confortable, idéal pour des randonnée en famille", title: "Kayak Brio RTM", condition: "Comme neuf", location: "St Malo")
file = URI.open('https://res.cloudinary.com/dciokrtia/image/upload/v1653645623/kayak-brio-rtm_xcsaa2.jpg')
equipment_kayak_2.photo.attach(io: file, filename: 'kayak2.png', content_type: 'image/png')
equipment_kayak_2.save!

equipment_kayak_3 = Equipment.new(sport: "Kayak", brand: "SEVYLOR", user: user4, price: 38, description: "Kayak gonflable et léger, idéal pour vivre des expériences amusantes et aventureuses en famille et entre amis", title: "Kayak gonflable Sevylor Tahaa Kit", condition: "Très bon état", location: "Cancale ")
file = URI.open('https://res.cloudinary.com/dciokrtia/image/upload/v1653646959/kayak-blue_vf9nby.jpg')
equipment_kayak_3.photo.attach(io: file, filename: 'kayak3.png', content_type: 'image/png')
equipment_kayak_3.save!

puts " seeding equipments kayak done"

puts " seeding equipments Wakeboard starting"
equipment_wake_1 = Equipment.new(sport: "Wakeboard", brand: "Prolix", user: user1, price: 60, description: "un petit plaisir en mer, vraiment genial ", board_size: 1.40, sail_size: 12, title: "wakeboard de fou", condition: "perfect", location: "La Baule")
file = URI.open('https://res.cloudinary.com/dciokrtia/image/upload/v1653489085/wakeboard_img_ljk35v.jpg')
equipment_wake_1.photo.attach(io: file, filename: 'wake1.png', content_type: 'image/png')
equipment_wake_1.save!

equipment_wake_2 = Equipment.new(sport: "Wakeboard", brand: "Vanity", user: user2, price: 58, description: "super pour un poid plume, femme ou enfant ", board_size: 1.36, sail_size: 6, title: "wakeboard vraiment sympa", condition: "medium", location: "Lacanau")
file = URI.open('https://res.cloudinary.com/dciokrtia/image/upload/v1653489085/wakeboard_img_ljk35v.jpg')
equipment_wake_2.photo.attach(io: file, filename: 'wake2.png', content_type: 'image/png')
equipment_wake_2.save!

equipment_wake_3 = Equipment.new(sport: "Wakeboard", brand: "Deacathlon", user: user3, price: 55, description: "vraiment super pour les vacances ou bien apprendre tranquillement", board_size: 1.40, sail_size: 12, title: "wakeboard pour apprendre", condition: "perfect", location: "St Malo")
file = URI.open('https://res.cloudinary.com/dciokrtia/image/upload/v1653489085/wakeboard_img_ljk35v.jpg')
equipment_wake_3.photo.attach(io: file, filename: 'wake3.png', content_type: 'image/png')
equipment_wake_3.save!

puts " seeding equipments Wakeboard done"

puts " seeding equipments Windsurf starting"
equipment_wind_1 = Equipment.new(sport: "Windsurf", brand: "Prolix", user: user4, price: 60, description: "un petit plaisir en mer, vraiment genial ", board_size: 2.20, sail_size: 9, title: "windsurf de fifou", condition: "good", location: "La Baule")
file = URI.open('https://res.cloudinary.com/dciokrtia/image/upload/v1653489091/windsurf_img_mpdoez.jpg')
equipment_wind_1.photo.attach(io: file, filename: 'wind1.png', content_type: 'image/png')
equipment_wind_1.save!

equipment_wind_2 = Equipment.new(sport: "Windsurf", brand: "Cove", user: user1, price: 65, description: "le top du top , fait pour les meilleurs", board_size: 2.20, sail_size: 12, title: "windsurf pour les pro", condition: "perfect", location: "Lacanau")
file = URI.open('https://res.cloudinary.com/dciokrtia/image/upload/v1653489091/windsurf_img_mpdoez.jpg')
equipment_wind_2.photo.attach(io: file, filename: 'wind2.png', content_type: 'image/png')
equipment_wind_2.save!

equipment_wind_3 = Equipment.new(sport: "Windsurf", brand: "Decathlon", user: user2, price: 62, description: "agreable pour les debutants", board_size: 2.10, sail_size: 9, title: "windsurf pour les debutants", condition: "medium", location: "St Malo")
file = URI.open('https://res.cloudinary.com/dciokrtia/image/upload/v1653489091/windsurf_img_mpdoez.jpg')
equipment_wind_3.photo.attach(io: file, filename: 'wind3.png', content_type: 'image/png')
equipment_wind_3.save!

puts " seeding equipments Windsurf done"
