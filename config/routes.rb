# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :admin do
    resources :items
  end
  resources :authors
  resources :members
  resources :purchases
  resources :users
  resources :articles
end
