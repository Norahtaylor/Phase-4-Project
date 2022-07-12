Rails.application.routes.draw do
  
  resources :experiences
  resources :places, only: [:index, :create, :show]
  resources :users, only: [:index, :create, :show]

  get "/signup", to: "users#new"
  get "/me", to: "users#show"

  post "/login", to: "sessions#create"
  delete "/sessions", to: "sessions#destroy"
 

  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
