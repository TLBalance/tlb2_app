Rails.application.routes.draw do

  get 'sessions/new'
  get 'home_page/home' #will need to check how to replace
  get 'users/new'
  
  root 'home_page#home'
  
  get '/signup',     to: 'users#new'
  post '/signup',    to: 'users#create'
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  
  delete '/logout',  to: 'sessions#destroy'
  
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
