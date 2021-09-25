Rails.application.routes.draw do
  root 'sessions#index'

  resources :documents
  resources :topics
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #Sessions routes
  get '/login', to: 'sessions#index'
  post '/login', to: 'sessions#login'
end
