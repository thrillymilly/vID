Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # routes for sessions
  post '/session', to: 'session#create'
  delete '/session', to: 'session#destroy'

  # routes for users
  resources :users, except: :new

  # routes for videos


  namespace :api do

    # routes for people
    namespace :people do
      post '/people', to: 'people#create'
      get '/people', to: 'people#create'
    end

    post '/videos', to: 'videos#create'
    get '/videos', to: 'videos#show'




  end

  root 'pages#index'


end
