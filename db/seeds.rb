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

  pending = Status.create!(
    name: "pending"
  )

  approved = Status.create!(
    name: "approved"
  )

  rejected = Status.create!(
    name: "rejected"
  )

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
      status_id: pending.id
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
      status_id: approved.id
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
      status_id: rejected.id
    )
    car += 1
  end

  AdminUser.create!(
    email: 'admin@example.com',
    password: 'password',
    password_confirmation: 'password'
  )
  puts "success"
end

if Rails.env.production?
  Statuc.create!(
    name: "pending"
  )
  Statuc.create!(
    name: "approved"
  )
  Statuc.create!(
    name: "rejected"
  )

  AdminUser.create!(
    name: 'Admin',
    phone:'1020304050',
    email: 'admin@example.com',
    password: 'password',
    password_confirmation: 'password'
  )
end
