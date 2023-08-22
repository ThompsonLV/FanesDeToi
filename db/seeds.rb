# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create!( email: "lazbotcod@gmail.com",
              encrypted_password: "10254785",
              name: "lazari",
              iban: "5555")

User.create!(email: "blabla@gmail.com",
             encrypted_password: "123456",
             name: "Cristiano",
             iban: "6982")

User.create!(email: "irieeeen@gmail.com",
             encrypted_password: "78987854e",
             name: "Eikichi",
             iban: "5555")
