Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "fanes#home"

  resources :users do
    resources :fanes
  end

  resources :fanes, only: %i[index show] do
    resources :bookings, only: %i[new create]
  end

end
