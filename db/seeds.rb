# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
if Rails.env.development?
  Car.create!(
    make: "Mazda",
    model: "3",
    body_type: "Sedan",
    mileage: "169000",
    color: "Green",
    price: "7000",
    fuel: "Petrol",
    year: "2008",
    engine_volume: "1.5",
    transmission: "Automatic",
    status: "pending"
  )
  Car.create!(
    make: "Ford",
    model: "Focus",
    body_type: "Sedan",
    mileage: "214000",
    color: "Gray",
    price: "6900",
    fuel: "Petrol",
    year: "2012",
    engine_volume: "1.6",
    transmission: "Manual",
    status: "pending"
  )
  Car.create!(
    make: "Tesla",
    model: "Model 3",
    body_type: "Sedan",
    mileage: "85000",
    color: "White",
    price: "21200",
    fuel: "Electro",
    year: "2020",
    engine_volume: "-",
    transmission: "Automatic",
    status: "pending"
  )
end