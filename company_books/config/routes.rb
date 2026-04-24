Rails.application.routes.draw do
  devise_for :users
  resources :books
  
  # Ez lesz a főoldal (http://localhost:3000/)
  root "books#index"
end