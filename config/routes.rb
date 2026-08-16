Rails.application.routes.draw do
  resources :taks
  get "sessions/new"

  # Health check
  get "up" => "rails/health#show", as: :rails_health_check

  # Home
  root "sessions#new"

  # Products
  resources :products

  # Login
  get "/login", to: "sessions#new", as: :login
  post "/login", to: "sessions#create"

  # Logout
  delete "/logout", to: "sessions#destroy", as: :logout

end