# require "rails_helper"
# require "shared_methods"

# RSpec.describe "Cars", type: :request do
#   before do
#     # create_user_and_cars
#     user = User.create(
#       email: "foo@example.com",
#       phone: "0987654321",
#       password: "123456",
#       password_confirmation: "123456"
#     )
#     Car.create!(
#       make: "Mazda",
#       model: "3",
#       body_type: "Sedan",
#       mileage: "169000",
#       color: "Green",
#       price: "7000",
#       fuel: "Petrol",
#       year: "2008",
#       engine_volume: "1.5",
#       transmission: "Automatic",
#       user_id: user.id
#     )
#      Car.create!(
#       make: "Ford",
#       model: "Focus",
#       body_type: "Sedan",
#       mileage: "214000",
#       color: "Gray",
#       price: "6900",
#       fuel: "Petrol",
#       year: "2012",
#       engine_volume: "1.6",
#       transmission: "Manual",
#       user_id: user.id
#     )
#     Car.create!(
#       make: "Tesla",
#       model: "Model 3",
#       body_type: "Sedan",
#       mileage: "85000",
#       color: "White",
#       price: "21200",
#       fuel: "Electro",
#       year: "2020",
#       engine_volume: "-",
#       transmission: "Automatic",
#       user_id: user.id
#     )
#   end

#   scenario "check a car" do
#     get "http://localhost:3000"
#     expect(response).to have_http_status(:success)
#     cars = JSON.parse(response.body)
#     expect(cars.length).to eq(3)
#   end

#   scenario "Get a car" do
#     get "http://localhost:3000/cars/2"
#     # get car_path("2")
#     expect(response).to have_http_status(:success)
#     car = JSON.parse(response.body)
#     expect(car["make"]).to eq("Ford")
#     expect(car["model"]).to eq("Focus")
#   end
# end
