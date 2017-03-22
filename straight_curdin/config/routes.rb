Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "cheeses#index"
  get "/cheeses", to: "cheeses#index" # cheeses_path
  get "/cheeses/new", to: "cheeses#new", as: :new_cheese
  get "/cheeses/:id", to: "cheeses#show", as: :turtle
end
