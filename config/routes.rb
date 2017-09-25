Rails.application.routes.draw do
  resources :events
  resources :profiles
  devise_for :users
  resources :users
  # For details on the DSL available within this file, see nrails.org/routing.html
  root to: "events#index"
end
