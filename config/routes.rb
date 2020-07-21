Rails.application.routes.draw do
  get 'pay/index'
  get 'home/index'
  root "users#show"
  resources :logout, only: [:index]
end
