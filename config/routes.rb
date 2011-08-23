OmniauthDemo::Application.routes.draw do

  resources :books, :except => [:show]

  # Omniauth pure
  match "/signin" => "services#signin"
  match "/signout" => "services#signout"

  match '/auth/:service/callback' => 'services#create' 
  match '/auth/failure' => 'services#failure'

  resources :services, :only => [:index, :create, :destroy] do
    collection do
      get 'signin'
      get 'signout'
      get 'signup'
      post 'newaccount'
      get 'failure'
    end
  end

  # used for the demo application only
  resources :users, :only => [:index] do
    collection do
      get 'test'
    end
  end
  
  get "/preference" => "preferences#preference" 
  post "/preferences/update" => "preferences#update" 
  resources :preferences, :only => [:create]
  root :to => "static_pages#home"
end
