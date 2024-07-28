# require "rails_helper"
# require "shared_methods"

# RSpec.describe "Cars", type: :request do
#   before do
#     test_user
#     login(test_user)
#     create_cars(test_user)
#   end

#   scenario "Sends a post request to create a car" do
#     post "http://localhost:3000/cars", params: {
#       car: {
#         make: "Tesla",
#         model: "Model 3",
#         body_type: "Sedan",
#         mileage: "85000",
#         color: "White",
#         price: "21200",
#         fuel: "Electro",
#         year: "2020",
#         engine_volume: "-",
#         transmission: "Automatic"
#       }
#     }

#     expect(response).to have_http_status(:success)
#     car = JSON.parse(response.body)
#     expect(car["make"]).to eq("Tesla")
#     expect(car["model"]).to eq("Model 3")
#   end
# end
