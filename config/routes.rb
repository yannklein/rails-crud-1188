Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  # CRUD
  # verb 'path', to: 'controller#action', as: 'prefix' 

  # Read
  # Read all: https://www.airbnb.com/rooms/
  get 'restaurants', to: 'restaurants#index', as: 'restaurants'
  get 'restaurants/new', to: "restaurants#new", as: 'new_restaurant'
  # Read one: https://www.airbnb.com/rooms/38078595
  get 'restaurants/:id', to: "restaurants#show", as: 'restaurant'

  # Create: https://www.airbnb.com/rooms/new
  post 'restaurants', to: "restaurants#create"
  
  # Update: https://www.airbnb.com/rooms/38078595/edit
  get 'restaurants/:id/edit', to: "restaurants#edit", as: 'edit_restaurant'
  patch 'restaurants/:id', to: "restaurants#update"

  # Delete
  delete 'restaurants/:id', to: "restaurants#destroy"

  # resources :restaurants, except: [:new]
end
