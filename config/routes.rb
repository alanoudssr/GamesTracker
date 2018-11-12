Rails.application.routes.draw do
  get "users/show"
  get "games/index", as: "games"
  get "games/show"
  get "games/edit"
  get "games/new"
  devise_for :users

  devise_scope :user do
    authenticated :user do
      root "users#show", as: :authenticated_root
    end

    unauthenticated do
      root "gameup#index", as: :unauthenticated_root
    end
  end

  resources :users, only: [:show]
  get "/search", to: "gameup#search"
  post "/search", to: "gameup#create"
  get "gameup/index"
  resources :games
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
