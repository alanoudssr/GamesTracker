Rails.application.routes.draw do
  root "gameup#index"
  get "/search", to: "gameup#search"
  get "gameup/index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
