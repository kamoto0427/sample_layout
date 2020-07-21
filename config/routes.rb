Rails.application.routes.draw do
  devise_for :users
  root 'users#show'
  get 'pay/index'
  get 'home/index'
  resources :users, only: [:show]
  resources :logout, only: [:index]
end
