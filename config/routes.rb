Rails.application.routes.draw do
  devise_for :users
  resources :user_portfolios
  resources :investment_histories
  devise_scope :user do
    authenticated :user do
      root :to => 'user_portfolios#index'
    end
    #unauthenticated :user do
     # root :to => 'devise/sessions#new'
    #end
  end  
end
