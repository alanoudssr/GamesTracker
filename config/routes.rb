Rails.application.routes.draw do
  get "users/show"
  get "games/index", as: "games"
  get "games/show"
  get "games/edit"
  get "games/new"
  devise_for :users

  resources :users, only: [:show]
  root "gameup#index"
  get "/search", to: "gameup#search"
  post "/search", to: "gameup#create"
  get "gameup/index"
  resources :games
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
