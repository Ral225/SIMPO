# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"

Teammate.create(first_name: Faker::Name.first_name, last_name: Faker::Name.male_first_name, job_title: Faker::Job.title)
Fleet.create(company_parc_number: '703', fleet_type: Faker::Construction.heavy_equipment, counter: 245, fuel_capacity: 2000, fleet_status: "In production")
Product.create(product_name: "Fuel", stock_level: 200, unit: "Liter")
Warehouse.create(warehouse_name: "Citerne à carburant")
