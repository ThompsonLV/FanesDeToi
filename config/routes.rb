Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "fanes#index"

  resources :users do
    resources :fanes
    get "my_fanes", to: "fanes#my_fanes"
  end

  resources :fanes, only: %i[ index show ] do
    resources :bookings, only: %i[ new create edit update ]


  end

  get "my_bookings", to: "bookings#my_bookings"

end
