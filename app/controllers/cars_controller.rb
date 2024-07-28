class CarsController < ApplicationController
  before_action :authenticate_user!, only: [ :create, :update, :destroy ]
  before_action :set_car, only: [ :show, :update, :destroy ]

  def index
    @cars = Car.all

    render json: @cars, except: [:created_at, :updated_at, :status]
  end

  def show
    render json: @car, except: [:created_at, :updated_at, :status]
  end

  def create
    @car = Car.new(car_params)
    @car.user_id = current_user.id

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
    render json: @car
  end

  private

    def set_car
      @car = Car.find(params[:id])
    end

    def car_params
      params.require(:car).permit(:make, :model, :body_type, :mileage, :color, :price, :fuel, :year, :engine_volume, :transmission, { photos: [] }) # , { photos: [] }
    end
end
