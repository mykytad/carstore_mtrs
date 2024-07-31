ActiveAdmin.register Car do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :make, :model, :body_type, :mileage, :color, :price, :fuel, :year, :engine_volume, :transmission, :status_id, :photos, :user_id
  #
  # or
  #
  permit_params do
    permitted = [:make, :model, :body_type, :mileage, :color, :price, :fuel, :year, :engine_volume, :transmission, :status_id, :photos, :user_id]
    # permitted << :other if params[:action] == 'create' && current_admin_user # current_user.admin?
    permitted
  end

  index do
    selectable_column
    id_column
    column :make
    column :model
    column :body_type
    column :price
    column :fuel
    column :year
    column :engine_volume
    column :transmission
    column :status
    # actions
  end

  form do |f|
    f.inputs do
      f.input :status
    end
    f.actions
  end

  filter :make
  filter :model
  filter :body_type
  filter :price
  filter :fuel
  filter :year
  filter :engine_volume
  filter :transmission
  filter :status

  controller do
    def edit
      car = Car.find(params[:id])
    end

    def update
      car = Car.find(params[:id])
      car.update(car_params)
      if car.save
        render admin_cars_path
      end
    end
  end
end
