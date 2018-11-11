Rails.application.routes.draw do
  get 'games/index'
  get 'games/show'
  get 'games/edit'
  get 'games/new'
  devise_for :users
  root "gameup#index"
  get "/search", to: "gameup#search"
  get "gameup/index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
