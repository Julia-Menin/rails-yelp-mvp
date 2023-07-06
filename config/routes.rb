Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "restaurants#index"
  # get "restaurants", to: "restaurants#index", as: "restaurants"
  # get "restaurants/new", to: "restaurants#new", as: "new_restaurant"
  # get "restaurants/:id", to: "restaurants#show", as: "restaurant"
  # post "restaurants", to: "restaurants#create"

  # get "restaurants/:restaurant_id/reviews/new", to: "reviews#new", as: "new_review"
  # post "restaurants/:restaurant_id/reviews", to: "reviews#create", as: "post_review"

  resources :restaurants, only: [:new, :show, :create] do
    resources :reviews, only: [:new, :create]
  end
end
