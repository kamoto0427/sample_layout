Rails.application.routes.draw do
  devise_for :users
  root 'users#show'
  get 'pay/index'
  resources :users, only: [:show]
  resources :logout, only: [:index]
  resources :credit_cards, only: [:index, :new, :show] do
    collection do
      post 'pay', to: 'credit_cards#pay'
      post 'delete', to: 'credit_cards#delete'
      post 'show', to: 'credit_cards#show'
    end
  end
end
