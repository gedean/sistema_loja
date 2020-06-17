Rails.application.routes.draw do
  get 'categories/index'
  resources :categories
  root to: 'pages#home'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
