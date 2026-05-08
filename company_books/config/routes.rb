# resources :products creates a complete RESTful package to the products resource. This contains the 7 basic actions: index, show, new, create, edit, update and destroy.

Rails.application.routes.draw do
  devise_for :users
  resources :books
  
  # Index page (http://localhost:3000/)
  root "books#index"
end