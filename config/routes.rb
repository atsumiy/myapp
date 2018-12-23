Rails.application.routes.draw do
  resources :users, only: [:edit, :update]
  devise_for :users
  resources :user_portfolios
  resources :investment_histories
  root to: 'user_portfolios#index'
end
