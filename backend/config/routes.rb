Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :pizzeria
  resources :orders

  # Users signup/login
  get '/login', to: 'sessions#new'
  post '/login', to:'sessions#create'
  get '/logout', to: 'sessions#destroy'
	get '/signup', to: 'users#new'
  post '/users', to: 'users#create'
  patch '/user/:id', to: 'users#update'
end
