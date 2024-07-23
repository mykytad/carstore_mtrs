require "rails_helper"

RSpec.describe "Cars", type: :request do
  before do
    Car.create(
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
    Car.create(
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
    Car.create(
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

  scenario "Get all cars and checks the array length" do
    get "http://localhost:3000"
    expect(response).to have_http_status(:success)
    cars = JSON.parse(response.body)
    expect(cars.length).to eq(3)
  end
end
