class CurrentUserController < ApplicationController
  before_action :authenticate_user!

  def index
    render json: UserSerializer.new(current_user).serializable_hash[:data][:attributes], status: :ok
  end

  def user_cars
    @cars = Car.where(:user_id => current_user.id)

    render json: @cars, except: [:created_at, :updated_at, :user_id]
  end

  def user_pending_car
    @cars = Car.where(:user_id => current_user.id, :status => "pending")

    render json: @cars, except: [:created_at, :updated_at, :user_id]
  end

  def user_rejected_car
    @cars = Car.where(:user_id => current_user.id, :status => "rejected")

    render json: @cars, except: [:created_at, :updated_at, :user_id]
  end

  def user_approved_car
    @cars = Car.where(:user_id => current_user.id, :status => "approved")

    render json: @cars, except: [:created_at, :updated_at, :user_id]
  end
end
