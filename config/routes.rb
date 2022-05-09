Rails.application.routes.draw do
  devise_for :users
  root "welcome#index"
  resources :user_stocks, only: [:create, :destroy]
  resources :users, only: [:show]
  resources :friendships  
  
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_stock', to: 'stocks#search'
  get 'my_friends', to: 'users#my_friends'
end
