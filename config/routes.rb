Rails.application.routes.draw do
  get '/auth/google_oauth2/callback' => 'sessions#omniauth'
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
  resource :ingredients
  resources :users do
    resource :recipes, only: [:index, :show]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
