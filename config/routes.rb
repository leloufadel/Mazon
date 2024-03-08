Rails.application.routes.draw do
  root 'users#home'

  devise_for :users
  
  resources :users, only: [:show, :index]
  resources :products, only: [:index, :show, :new, :create]
end
