# require "rails_helper"

# RSpec.describe "Cars", type: :request do
#   before do
#     Car.create(
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
#       status: "pending"
#     )
#     Car.create(
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
#       status: "pending"
#     )
#   end

#   scenario "Sends a delete request to delete a car" do
#       delete "http://localhost:3000/cars/1"
#       expect(response).to have_http_status(:success)

#       get "http://localhost:3000"

#       expect(response).to have_http_status(:success)
#       cars = JSON.parse(response.body)
#       expect(cars.length).to eq(1)
#   end
# end