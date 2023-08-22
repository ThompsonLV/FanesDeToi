# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Booking.destroy_all
Fane.destroy_all
User.destroy_all

@thomas = User.create!(email: "thomas@gmail.com", name: "Thomas", iban: "1234", password: 'password123', password_confirmation: 'password123')
User.create!(email: "charles@gmail.com", name: "charles", iban: "4321", password: 'password123', password_confirmation: 'password123')
User.create!(email: "Azhari@gmail.com", name: "Azhari", iban: "2413", password: 'password123', password_confirmation: 'password123')

@fane = Fane.create!(title: "mongomeri", brand: "Dyson", start_date: "22/04/2000", end_date: "24/04/2000", validation: nil, user_id: @thomas.id)
Fane.create!(title: "pirouette", brand: "Valseuse", start_date: "22/03/2010", end_date: "31/04/2020", validation: nil, user_id: @thomas.id)

Booking.create!(start_date: "17/03/2015", end_date: "04/04/2023", user_id: @thomas.id, fane_id: @fane.id)
Booking.create!(start_date: "13/03/1995", end_date: "04/04/2022", user_id: @thomas.id, fane_id: @fane.id)
