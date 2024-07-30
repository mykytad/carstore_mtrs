ActiveAdmin.register Car do
  permit_params :make, :model, :body_type, :mileage, :color, :price, :fuel, :year, :engine_volume, :transmission, :user_id, :status_id
end