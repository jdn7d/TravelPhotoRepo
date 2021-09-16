Rails.application.routes.draw do

  resources :trips
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'

  delete '/logout' => 'sessions#destroy'
  get '/logout' => 'sessions#destroy'
  
  resources :users
  resources :photos
  resources :sessions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
