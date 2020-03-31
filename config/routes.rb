Rails.application.routes.draw do
  devise_for :users
  root "tops#index"
  resources :cars, only: [ :index, :new, :create, :show ] do
    resources :requests, only: [ :create ]
    resources :likes, only: [:create, :destroy]
  end
  resources :searches, only: [ :index ]
  resources :users, controllers: [ registrations: 'users/registrations' ]
end
