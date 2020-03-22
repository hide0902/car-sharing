Rails.application.routes.draw do
  devise_for :users
  root "tops#index"
  resources :cars, only: [:new, :create]
end
