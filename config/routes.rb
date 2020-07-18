Rails.application.routes.draw do
  get 'grid/index'
  devise_for :users
  root to: 'pages#home'
  resources :grid
  resources :categories
  resources :products
  resources :sales
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
