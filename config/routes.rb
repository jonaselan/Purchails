Rails.application.routes.draw do
  resources :authors
  resources :members
  resources :items
  resources :purchases
  resources :users
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
