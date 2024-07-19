class CarsController < ApplicationController
  before_action :set_car, only: [ :show, :update, :destroy ]

  def index
    @cars = Car.all

    render json: @cars, only: [:make, :model, :body_type, :mileage, :transmission, :color, :price, :fuel, :year, :engine_volume, :photo,]
  end

  def show
    render json: @car, only: [:make, :model, :body_type, :mileage, :transmission, :color, :price, :fuel, :year, :engine_volume, :photo,]
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)

    if @car.save
      render json: @car, status: :created, location: @car
    else
      render json: @car.errors, status: :unprocessable_entity
    end
  end

  def update
    if @car.update(car_params)
      render json: @car
    else
      render json: @car.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @car.destroy
  end

  private

  def set_car
      @car = Car.find(params[:id])
    end

    def car_params
      params.require(:car).permit(:make, :model, :body_type, :mileage, :color, :price, :fuel, :year, :engine_volume, :transmission)
    end
end
