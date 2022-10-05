Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  # Login route
  post "/login", to: "sessions#create"

  # Logout route
  delete "/logout", to: "sessions#destroy"

  # run UsersController#show method
  get "/me", to: "users#show"
end
