require "rails_helper"
require "shared_methods"

RSpec.describe "Cars", type: :request do
  before do
    create_user_and_cars
    # test_user
    # create_cars(test_user)
  end

  scenario "Get all cars and checks the array length" do
    get "http://localhost:3000"
    expect(response).to have_http_status(:success)
    cars = JSON.parse(response.body)
    expect(cars.length).to eq(3)
  end
end
