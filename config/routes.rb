Rails.application.routes.draw do
  #signup routes
  get '/register', to: 'users#new'
  post '/users', to: 'users#create'
  #login routes
  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'

  #get '/recipes', to: 'recipes#new'
  #post '/recipes', to: 'recipes#create'
  #get '/recipe', to: 'recipes#show'
  #get '/recipe', to: 'recipes#index'
  # logout routes
  delete '/logout', to: 'sessions#destroy'

  #root route
  root 'application#home' 

  resources :recipes
  resources :ingredients
  resources :recipes do
    resource :ingredients
  end
  resources :users do
    resource :recipes, only: [:index, :show]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
