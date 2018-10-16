Rails.application.routes.draw do
  resources :user_portfolios
  get 'user/show' => 'user#show'
  root 'user_portfolios#index'
end