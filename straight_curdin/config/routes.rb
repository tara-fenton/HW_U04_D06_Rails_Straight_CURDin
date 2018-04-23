Rails.application.routes.draw do
  get 'cheeses/index'
  # get 'cheese/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', :to => 'cheeses#index'
  resources :cheeses
end
