Rails.application.routes.draw do
  
  devise_for :users
  root 'top#index'
  
  resources :lists, only: %i(new create edit update destroy)
  resources :users, only: %i(show edit update)
  
end