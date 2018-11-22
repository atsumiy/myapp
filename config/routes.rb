Rails.application.routes.draw do
  resources :user_portfolios
  resources :investment_histories
  root 'user_portfolios#index'
end