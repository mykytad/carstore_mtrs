# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
if Rails.env.development?
  my_user = User.create(
    email: "nikita@example.com",
    phone: "0987654321",
    password: "123456",
    password_confirmation: "123456"
  )
  u = 0
  while u < 2
    User.create!(
      email: Faker::Internet.email,
      phone: 111_111_111,
      password: "123456",
      password_confirmation: "123456"
    )
    u += 1
  end

  car = 0
  while car < 4
    Car.create!(
      make: Faker::Camera.brand,
      model: Faker::Camera.model,
      body_type: "Sedan",
      mileage: "169000",
      color: Faker::Color.color_name,
      price: "7000",
      fuel: "Petrol",
      year: "2008",
      engine_volume: "1.5",
      transmission: "Automatic",
      user_id: my_user.id
    )
    car += 1
  end

  car = 0
  while car < 4
    Car.create!(
      make: Faker::Camera.brand,
      model: Faker::Camera.model,
      body_type: "Sedan",
      mileage: "169000",
      color: Faker::Color.color_name,
      price: "7000",
      fuel: "Petrol",
      year: "2008",
      engine_volume: "1.5",
      transmission: "Automatic",
      user_id: my_user.id,
      status: "approved"
    )
    car += 1
  end

  car = 0
  while car < 2
    Car.create!(
      make: Faker::Camera.brand,
      model: Faker::Camera.model,
      body_type: "Sedan",
      mileage: "169000",
      color: Faker::Color.color_name,
      price: "7000",
      fuel: "Petrol",
      year: "2008",
      engine_volume: "1.5",
      transmission: "Automatic",
      user_id: my_user.id,
      status: "rejected"
    )
    car += 1
  end
  puts "success"
end