# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
puts "cleanning db"
User.destroy_all
puts "db clean"

puts "seeding users starting"
user1 = User.create(first_name: "yohann", last_name: "lemasson", email: "yohann@gmail.com", phone: "0606060601", password: "yohann")

user2 = User.create(first_name: "cedric", last_name: "le brun", email: "cedric@gmail.com", phone: "0606060602", password: "cedric")

user3 = User.create(first_name: "margaux", last_name: "pichard", email: "margaux@gmail.com", phone: "0606060603", password: "margaux")

user4 = User.create(first_name: "clement", last_name: "spiers", email: "clement@gmail.com", phone: "0606060604", password: "clement")
puts "seeding users done"

put "seeding equipments surf starting"
equipment_surf_1 = Equipment.create(sport: "surf", brand: "Tyler Warren", user_id: user1, price: "35", description: "superbe planche de surf pour un pur moment de plaisir en mer", board_size: "2.15")

equipment_surf_2 = Equipment.create(sport: "surf", brand: "Decathlon", user_id: user2, price: "30", description: "bonne planche pour les debutants", board_size: "2.10")

equipment_surf_3 = Equipment.create(sport: "surf", brand: "7Oceans", user_id: user3, price: "32", description: "tres bonne planche pour de la grosse vague , tu vas vraiment aimer!", board_size: "2.12")
put " seedint equipments surf done"

put " seeding equipments paddle starting"
equipment_paddle_1 = Equipment.create(sport: "paddle", brand: "Tyler Warren", user_id: user4, price: "40", description: "tu vas aimer sa tenue en mer , super agreable", board_size: "2.20")

equipment_paddle_2 = Equipment.create(sport: "paddle", brand: "Decathlon", user_id: user1, price: "38", description: "du plaisir , voila le mot d'ordre avec cette superbe planche ", board_size: "2.20")

equipment_paddle_3 = Equipment.create(sport: "paddle", brand: "Sps", user_id: user2, price: "45", description: "la meilleur planche de paddle que tu puisse avoir le top du top ", board_size: "2.22")
put " seeding equipments paddle done"

put " seeding equipments kite surf starting"
equipment_kite_1 = Equipment.create(sport: "kite surf", brand: "Boardworks", user_id: user3, price: "55", description: "un petit plaisir en mer , utilise ce kite surf , un orgasme en mer", board_size: "2.05", sail_size: "12")

equipment_kite_2 = Equipment.create(sport: "kite surf", brand: "Corsurf", user_id: user4, price: "50", description: "superbe planche franchement top pour mousser devant les filels à la plage", board_size: "2.08", sail_size: "9")

equipment_kite_3 = Equipment.create(sport: "kite surf", brand: "Decathlon", user_id: user1, price: "48", description: "je vous propose mon kite , je l'ai acheter mais je ne sais pas en faire donc je le loue ", board_size: "2.07", sail_size: "12")
put " seeding equipments kite surf done"

put " seeding equipments kayak starting"
equipment_kayak_1 = Equipment.create(sport: "kayak", brand: "Ventura", user_id: user2, price: "40", description: "kayak gonflable , il y a une pompe , super agreable ", board_size: "3.30")

equipment_kayak_2 = Equipment.create(sport: "kayak", brand: "Cove", user_id: user3, price: "42", description: "kayak gonflable , je le loue pour 1 semaine minimun  ", board_size: "3.20")

equipment_kayak_3 = Equipment.create(sport: "kayak", brand: "Decathlon", user_id: user4, price: "38", description: "je l'ai acheter lété dernier il est impecable , super pour les enfants ,kayak gonflable  ", board_size: "3.25")
put " seeding equipments kayak done"

put " seeding equipments Wakeboard starting"
equipment_wake_1 = Equipment.create(sport: "wakeboard", brand: "Prolix", user_id: user1, price: "60", description: "un petit plaisir en mer, vraiment genial ", board_size: "1;40", sail_size: "12")

equipment_wake_2 = Equipment.create(sport: "wakeboard", brand: "Vanity", user_id: user2, price: "58", description: "super pour un poid plume, femme ou enfant ", board_size: "1;36", sail_size: "6")

equipment_wake_3 = Equipment.create(sport: "wakeboard", brand: "Deacathlon", user_id: user3, price: "55", description: "vraiment super pour les vacances ou bien apprendre tranquillement", board_size: "1;40", sail_size: "12")
put " seeding equipments Wakeboard done"

put " seeding equipments Windsurf starting"
equipment_wind_1 = Equipment.create(sport: "windsurf", brand: "Prolix", user_id: user4, price: "60", description: "un petit plaisir en mer, vraiment genial ", board_size: "2,20", sail_size: "9")

equipment_wind_2 = Equipment.create(sport: "windsurf", brand: "Cove", user_id: user1, price: "65", description: "le top du top , fait pour les meilleurs", board_size: "2,20", sail_size: "12")

equipment_wind_3 = Equipment.create(sport: "windsurf", brand: "Decathlon", user_id: user2, price: "62", description: "agreable pour les debutants", board_size: "2,10", sail_size: "9")
put " seeding equipments Windsurf done"
