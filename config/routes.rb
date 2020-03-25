Rails.application.routes.draw do
  devise_for :users
  root "tops#index"
  resources :cars, only: [ :index, :new, :create ]
  resources :searches, only: [ :index ]
end
