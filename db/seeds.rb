# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'date'

puts "----------------------"
puts "Suppresion des données"
puts "----------------------"
Booking.destroy_all
Fane.destroy_all
User.destroy_all

puts "Création des données"
puts "----------------------"
@thomas = User.create!(email: "thomas@gmail.com", name: "Thomas", iban: "1234", password: 'azerty', password_confirmation: 'azerty')
@charles = User.create!(email: "charles@gmail.com", name: "Charles", iban: "1234", password: 'azerty', password_confirmation: 'azerty')
@azhari = User.create!(email: "azhari@gmail.com", name: "Azhari", iban: "1234", password: 'azerty', password_confirmation: 'azerty')

today = Date.today

fane1 = Fane.new(
  title: "Mongomeri",
  brand: "Dyson",
  start_date: today - 10,
  end_date: today + (10..30).to_a.sample,
  validation: nil,
  user_id: @thomas.id,
  address: "20 rue des capucins, 69001 lyon ",
  description: "Découvrez notre ventilateur de pointe, alliant élégance et performance. Parfait pour garder une brise fraîche dans n'importe quelle pièce, avec ses modes de vitesse réglables et son design moderne.",
  price_per_day: (10..30).to_a.sample
)

file = URI.open("https://www.festihome.com/img/cms/images-conseils/4%20conseils%20pour%20bien%20utiliser%20son%20ventilateur/ventilateur-bronze.jpg")
fane1.photos.attach(io: file, filename: "fane1.png", content_type: "image/png")
fane1.save

fane2 = Fane.new(
  title: "Pirouette",
  brand: "Dyson",
  start_date: today - 20,
  end_date: today + (10..30).to_a.sample,
  validation: nil,
  user_id: @azhari.id,
  address: "22 rue ozanam, 69001 lyon ",
  description: "Restez au frais cet été avec notre ventilateur silencieux. Son fonctionnement discret et sa conception portable en font l'accessoire idéal pour les bureaux, chambres et espaces de vie.",
  price_per_day: (10..30).to_a.sample
)
file = URI.open("https://www.festihome.com/img/cms/images-conseils/4%20conseils%20pour%20bien%20utiliser%20son%20ventilateur/ventilateur-bronze.jpg")
fane2.photos.attach(io: file, filename: "fane2.png", content_type: "image/png")
fane2.save

fane3 = Fane.new(
  title: "Pipette",
  brand: "Dyson",
  start_date: today - 10,
  end_date: today + (10..30).to_a.sample,
  validation: nil,
  user_id: @thomas.id,
  address: "19 rue benoit tabard, 69130 ecully",
  description: "Laissez la chaleur derrière vous avec notre ventilateur haute performance. Ses pales optimisées fournissent un flux d'air puissant tout en étant économe en énergie, pour une sensation de fraîcheur instantanée.",
  price_per_day: (10..30).to_a.sample
)

file = URI.open("https://www.festihome.com/img/cms/images-conseils/4%20conseils%20pour%20bien%20utiliser%20son%20ventilateur/ventilateur-bronze.jpg")
fane3.photos.attach(io: file, filename: "fane1.png", content_type: "image/png")
fane3.save


fane4 = Fane.new(
  title: "Choupette",
  brand: "baveuse",
  start_date: today - 10,
  end_date: today + (10..30).to_a.sample,
  validation: nil,
  user_id: @charles.id,
  address: "175 cours Lafayette, 69006 Lyon",
  description: "Le ventilateur de tour élégant et compact est conçu pour une circulation d'air maximale. Profitez de sa télécommande intuitive et de ses fonctions programmables pour un confort personnalisé.",
  price_per_day: (10..30).to_a.sample
)
file = URI.open("https://www.festihome.com/img/cms/images-conseils/4%20conseils%20pour%20bien%20utiliser%20son%20ventilateur/ventilateur-bronze.jpg")
fane4.photos.attach(io: file, filename: "fane1.png", content_type: "image/png")
fane4.save

fane5 = Fane.new(
  title: "Clochette",
  brand: "Dyson",
  start_date: today - 10,
  end_date: today + (10..30).to_a.sample,
  validation: nil,
  user_id: @thomas.id,
  address: "30 rue des capucins, 69001 Lyon",
  description: "Améliorez la circulation d'air dans votre maison grâce à notre ventilateur de plafond moderne. Ses pales réversibles vous offrent un contrôle total sur la température ambiante toute l'année.",
  price_per_day: (10..30).to_a.sample
)
file = URI.open("https://www.festihome.com/img/cms/images-conseils/4%20conseils%20pour%20bien%20utiliser%20son%20ventilateur/ventilateur-bronze.jpg")
fane5.photos.attach(io: file, filename: "fane1.png", content_type: "image/png")
fane5.save

fane6 = Fane.new(
  title: "Cacahuète",
  brand: "Vostop",
  start_date: today - 10,
  end_date: today + (10..30).to_a.sample,
  validation: nil,
  user_id: @azhari.id,
  address: "23 rue du port du temple, Lyon",
  description: "Le ventilateur de table portable est votre compagnon idéal en déplacement. Son design léger et sa technologie de refroidissement avancée garantissent un soulagement instantané où que vous soyez.",
  price_per_day: (10..30).to_a.sample
)
file = URI.open("https://www.festihome.com/img/cms/images-conseils/4%20conseils%20pour%20bien%20utiliser%20son%20ventilateur/ventilateur-bronze.jpg")
fane6.photos.attach(io: file, filename: "fane1.png", content_type: "image/png")
fane6.save

Booking.create!(start_date: "17/03/2015", end_date: "04/09/2023", user_id: @thomas.id, fane_id: fane1.id)
Booking.create!(start_date: "13/03/1995", end_date: "04/09/2022", user_id: @thomas.id, fane_id: fane2.id)

puts "Terminés"
puts "----------------------"
