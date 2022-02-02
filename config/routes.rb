Rails.application.routes.draw do
  resources :reviews
  resources :users
  resources :events
  resources :order_details
  resources :shopping_sessions
  resources :cart_items
  resources :discounts
  resources :order_items
  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
