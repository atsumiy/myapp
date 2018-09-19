Rails.application.routes.draw do
  get 'portfolio/index'
  get 'user/show' => 'user#show'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
