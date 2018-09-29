Rails.application.routes.draw do
resources :user_portfolios
root 'user_portfolios#index'
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end