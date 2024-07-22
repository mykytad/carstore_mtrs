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
#   end

#   scenario "check a car" do
#     get "http://localhost:3000"
#     expect(response).to have_http_status(:success)
#     cars = JSON.parse(response.body)
#     expect(cars.length).to eq(1)
    
#   end

#   scenario "Get a car" do
#     get "http://localhost:3000/cars/1"
#     expect(response).to have_http_status(:success)
#     post = JSON.parse(response.body)
#     expect(post["make"]).to eq("Ford")
#     expect(post["model"]).to eq("Focus")
#   end
# end