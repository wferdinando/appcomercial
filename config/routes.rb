Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :users
  resources :categories
  resources :clients
  resources :suppliers

end
