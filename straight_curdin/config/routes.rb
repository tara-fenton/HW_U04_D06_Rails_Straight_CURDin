Rails.application.routes.draw do
  get 'favorites/index'
  devise_for :users
  get 'cheeses/index'
  get 'profiles/index'
  # get 'cheese/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', :to => 'cheeses#index'
  resources :cheeses
end
