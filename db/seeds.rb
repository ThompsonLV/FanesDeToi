# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'date'
require 'faker'

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

users_id = [@thomas.id, @charles.id, @azhari.id]

today = Date.today

adress = [
  "130 Cours Lafayette, 69003 Lyon",
  "132 Rue Pierre Corneille, 69003 Lyon",
  "8 Rue Malesherbes, 69006 Lyon",
  "8 place de Fourvière, 69005 Lyon",
  "7 Rue Neuve, 69001 Lyon",
  "10 Rue de la République, 69001 Lyon",
  "30 Cours de Verdun Perrache, 69002 Lyon",
  "3 Rue Pré-Gaudry, 69007 Lyon",
  "58 Rue Clément Marot, 69007 Lyon",
  "73 Rue Pierre Delore, 69008 Lyon",
  "59 Rue Trarieux, 69003 Lyon",
  "18 Rue Poizat, 69100 Villeurbanne",
  "52 Rue Alexis Perroncel, 69100 Villeurbanne",
  "3 Rue des Pierres Plantées, 69001 Lyon",
  "47 Rue Pasteur, 69300 Caluire-et-Cuire"
]

image = [
  "https://media.carrefour.fr/medias/f22fd71600a634d197f111e56f4a381e/p_1500x1500/3616952857363-photosite-2023613-15565-1.jpg",
  "https://images.tempsl.fr/Produits/528/2505410_WEB1.jpg",
  "https://media.ventilateurs-plafond.com/10698-large_default/ventilateur-de-table-30-cm-blanc-3-vitesses-avec-grille-de-protection-oscillant.jpg",
  "https://brumisateur-terrasse.fr/cdn/shop/products/VentilateuravecKitBrumisateurpourVentilateur_1200x.png?v=1673444524",
  "https://moineau-instruments.com/3790-large_default/ventilateur-de-sol-diametre-30-cm.jpg",
  "https://cdn.manomano.com/media/edison/2/5/8/f/258ff1fc604d.jpg",
  "https://www.decome-store.fr/19645-thickbox_pbm/ventilateur-brumisateur-professionnel-haute-performance-180cm.jpg",
  "https://www.airchaud-diffusion.fr/medias/-/mention/images/produits/ventilateur-mobile-au-sol-electrique-vm-50-pa-2-splus-0d-00354-rsp.jpg?t=1650986980",
  "https://aecamp.biz/11836-thickbox_default/ventilateur-avec-pince-230v.jpg",
  "https://www.protoumat.fr/medias/-/mention/images/produits/ventilateur-industriel-gros-debit-pour-chantier-7860m-splus-sp-2112570-sp-2112570-0c-13265-rsp.jpg?t=1690311683",
  "https://media-growled.growenhancer.eu/15488-large_default/ventilateur-oscillant-a-pince-20w-25cm-garden-highpro.jpg",
  "https://m.media-amazon.com/images/I/71tONFoBAGL._AC_UF1000,1000_QL80_.jpg",
  "https://salson.fr/12972-home_default/ventilateur-sur-pied-45cm-bois-3xvi.jpg",
  "https://www.racetools.fr/37083-thickbox_default/ventilateur-industriel-sur-pied-o508cm-120w-stanley-st-20p-e.jpg"
]

i = 0
14.times do
  fane = Fane.new(
    title: Faker::Name.middle_name,
    brand: Faker::Commerce.brand,
    start_date: today - 20,
    end_date: today + (10..30).to_a.sample,
    validation: nil,
    user_id: users_id.sample,
    address: adress[i],
    description: Faker::Markdown.emphasis,
    price_per_day: (1..4).to_a.sample
  )
  file = URI.open(image[i])
  fane.photos.attach(io: file, filename: "fane.png", content_type: "image/png")
  fane.save
  i += 1
end

# Booking.create!(start_date: today - 20, end_date: today + 10, user_id: @thomas.id, fane_id: Fane.first.id)
# Booking.create!(start_date: today - 10, end_date: today + 15, user_id: @thomas.id, fane_id: Fane.second.id)

puts "Terminés"
puts "----------------------"
