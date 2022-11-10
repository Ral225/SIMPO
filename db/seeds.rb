# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"
require "open-uri"


# DESTROY ALL
User.destroy_all
Teammate.destroy_all
Fleet.destroy_all
Product.destroy_all
Warehouse.destroy_all
puts "everything destroyed"


#Seed

person = Teammate.create(first_name: 'Alibhai', last_name:'Raheem', job_title: 'Operator')
file = URI.open("https://ca.slack-edge.com/T02NE0241-U03NVAPFBGV-cf08ead93701-512")
person.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
person.save!
puts "teammate created : #{person.first_name}"


User.create(email: "ral@ivoireacademie.com", encrypted_password: "123123")



machine = Fleet.create(company_parc_number: '703', fleet_type: Faker::Construction.heavy_equipment, counter: 245, fuel_capacity: 2000, fleet_status: "In production")

file = URI.open("https://unsplash.com/photos/bGMyTnSlYvE")
machine.photos.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
machine.save!
puts "machine created : #{machine.fleet_type}"

product = Product.create(product_name: "Fuel", stock_level: 200, unit: "Liter")

puts "product created : #{product.product_name}"

magasin = Warehouse.create(warehouse_name: "Citerne à carburant")

puts "magasin created : #{magasin.warehouse_name}"
