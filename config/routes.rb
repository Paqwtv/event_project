Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :profiles

  resources :chat_rooms
  resources :categories
  resources :qr_teches
  resources :snoopers
  resources :events
  

  #get 'profiles/edit', as: 'user_root'

  # For details on the DSL available within this file, see nrails.org/routing.html
  root to: "events#index"
end
