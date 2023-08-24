# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "----------------------"
puts "Suppresion des données"
puts "----------------------"
Booking.destroy_all
Fane.destroy_all
User.destroy_all

puts "Création des données"
puts "----------------------"
@thomas = User.create!(email: "thomas@gmail.com", name: "Thomas", iban: "1234", password: 'password123', password_confirmation: 'password123')
User.create!(email: "charles@gmail.com", name: "charles", iban: "4321", password: 'password123', password_confirmation: 'password123')
User.create!(email: "Azhari@gmail.com", name: "Azhari", iban: "2413", password: 'password123', password_confirmation: 'password123')


fane_1= Fane.new(
  title: "mongomeri",
  brand: "Dyson",
  start_date: "22/04/2000",
  end_date: "24/04/2000",
  validation: nil,
  user_id: @thomas.id,
  address: "20 rue des capucins, 69001 lyon ",
  description: "Ventilateur de Plafond Silencieux et Élégant :
  Transformez votre espace en un havre de fraîcheur avec notre ventilateur de plafond ultra-silencieux. Sa conception élégante s'intègre parfaitement à n'importe quel intérieur tout en offrant une circulation d'air optimale.",
  price_per_day: 12
)

file = URI.open("https://www.festihome.com/img/cms/images-conseils/4%20conseils%20pour%20bien%20utiliser%20son%20ventilateur/ventilateur-bronze.jpg")
fane_1.photos.attach(io: file, filename: "fane_1.png", content_type: "image/png")
fane_1.save

fane_2= Fane.new(
  title: "pirouette",
  brand: "Valseuse",
  start_date: "22/03/2010",
  end_date: "31/04/2020",
  validation: nil,
  user_id: @thomas.id,
  address: "22 rue ozanam, 69001 lyon ",
  description: "Ventilateur de Plafond Silencieux et Élégant :
  Transformez votre espace en un havre de fraîcheur avec notre ventilateur de plafond ultra-silencieux. Sa conception élégante s'intègre parfaitement à n'importe quel intérieur tout en offrant une circulation d'air optimale.",
  price_per_day: 12
)
file = URI.open("https://www.festihome.com/img/cms/images-conseils/4%20conseils%20pour%20bien%20utiliser%20son%20ventilateur/ventilateur-bronze.jpg")
fane_2.photos.attach(io: file, filename: "fane_2.png", content_type: "image/png")
fane_2.save

fane_3= Fane.new(
  title: "pipette",
  brand: "Dyson",
  start_date: "22/04/2000",
  end_date: "24/04/2000",
  validation: nil,
  user_id: @thomas.id,
  address: "19 rue benoit tabard, 69130 ecully",
  description: "Ventilateur de Plafond Silencieux et Élégant :
  Transformez votre espace en un havre de fraîcheur avec notre ventilateur de plafond ultra-silencieux. Sa conception élégante s'intègre parfaitement à n'importe quel intérieur tout en offrant une circulation d'air optimale.",
  price_per_day: 12
)

file = URI.open("https://www.festihome.com/img/cms/images-conseils/4%20conseils%20pour%20bien%20utiliser%20son%20ventilateur/ventilateur-bronze.jpg")
fane_3.photos.attach(io: file, filename: "fane_1.png", content_type: "image/png")
fane_3.save


fane_4= Fane.new(
  title: "choupette",
  brand: "baveuse",
  start_date: "22/03/2010",
  end_date: "31/04/2020",
  validation: nil,
  user_id: @thomas.id,
  address: "175 cours Lafayette, 69006 Lyon",
  description: "Ventilateur de Plafond Silencieux et Élégant :
  Transformez votre espace en un havre de fraîcheur avec notre ventilateur de plafond ultra-silencieux. Sa conception élégante s'intègre parfaitement à n'importe quel intérieur tout en offrant une circulation d'air optimale.",
  price_per_day: 12
)
file = URI.open("https://www.festihome.com/img/cms/images-conseils/4%20conseils%20pour%20bien%20utiliser%20son%20ventilateur/ventilateur-bronze.jpg")
fane_4.photos.attach(io: file, filename: "fane_1.png", content_type: "image/png")
fane_4.save

fane_5= Fane.new(
  title: "clochette",
  brand: "Dyson",
  start_date: "22/04/2000",
  end_date: "24/04/2000",
  validation: nil,
  user_id: @thomas.id,
  address: "30 rue des capucins, 69001 Lyon",
  description: "Ventilateur de Plafond Silencieux et Élégant :
  Transformez votre espace en un havre de fraîcheur avec notre ventilateur de plafond ultra-silencieux. Sa conception élégante s'intègre parfaitement à n'importe quel intérieur tout en offrant une circulation d'air optimale.",
  price_per_day: 12
)
file = URI.open("https://www.festihome.com/img/cms/images-conseils/4%20conseils%20pour%20bien%20utiliser%20son%20ventilateur/ventilateur-bronze.jpg")
fane_5.photos.attach(io: file, filename: "fane_1.png", content_type: "image/png")
fane_5.save

fane_6= Fane.new(
  title: "cacahuète",
  brand: "vostop",
  start_date: "25/03/2010",
  end_date: "31/04/2020",
  validation: nil,
  user_id: @thomas.id,
  address: "23 rue du port du temple, Lyon",
  description: "Ventilateur de Plafond Silencieux et Élégant :
  Transformez votre espace en un havre de fraîcheur avec notre ventilateur de plafond ultra-silencieux. Sa conception élégante s'intègre parfaitement à n'importe quel intérieur tout en offrant une circulation d'air optimale.",
  price_per_day: 12
)
file = URI.open("https://www.festihome.com/img/cms/images-conseils/4%20conseils%20pour%20bien%20utiliser%20son%20ventilateur/ventilateur-bronze.jpg")
fane_6.photos.attach(io: file, filename: "fane_1.png", content_type: "image/png")
fane_6.save

Booking.create!(start_date: "17/03/2015", end_date: "04/09/2023", user_id: @thomas.id, fane_id: fane_1.id)
Booking.create!(start_date: "13/03/1995", end_date: "04/09/2022", user_id: @thomas.id, fane_id: fane_2.id)

puts "Terminés"
puts "----------------------"
