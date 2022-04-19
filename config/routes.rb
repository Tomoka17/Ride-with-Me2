Rails.application.routes.draw do
  devise_for :users
  root to: 'garages#index'

  resources :garages
  resources :tourings
end
