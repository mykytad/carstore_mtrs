Rails.application.routes.draw do
  root "cars#index"

  get "user", to: "current_user#index"
  get "my_cars", to: "current_user#user_cars"
  get "my_pending_car", to: "current_user#user_pending_car"
  get "my_rejected_car", to: "current_user#user_rejected_car"
  get "my_approved_car", to: "current_user#user_approved_car"


  devise_for :users, path:'', path_names: {
    sign_in: "login",
    sign_out: "logout",
    registration: "signup"
  },
  controllers:{
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }, 
  defaults: { format: :json }

  resources :cars, only: [ :show, :create, :update, :destroy ]
end
