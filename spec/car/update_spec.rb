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
  end

  scenario "request to update a car" do
    patch "http://localhost:3000/cars/1", params: {post: {price:"6500"}}
    expect(response).to have_http_status(:success)
    car = JSON.parse(response.body)
    expect(car["price"]).to eq("6500")
  end
end