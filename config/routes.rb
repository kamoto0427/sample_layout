Rails.application.routes.draw do
  root 'users#show'
  get 'pay/index'
  get 'home/index'
  resources :users, only: [:show]
  resources :logout, only: [:index]
end
