Rails.application.routes.draw do
  get 'products/index'
  get 'categories/index'
  resources :categories
  resources :products
  root to: 'pages#home'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
