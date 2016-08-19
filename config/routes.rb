Rails.application.routes.draw do

  resources :movies do
        resources :reviews, only: [:new, :create]
      end
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create]
  root to: 'movies#index'

  namespace :admin do
    resources :users
  end
end
