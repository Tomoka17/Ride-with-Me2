Rails.application.routes.draw do
  devise_for :users
  root to: 'garages#index'

  resources :garages
  resources :tourings do
    resources :comments, only:[:index, :create]
  end
  resources :users, only: :show
  
end
