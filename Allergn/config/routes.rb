Rails.application.routes.draw do
  resources :ingredients, only: [:index, :show]
  resources :recipes, only: [:index, :new, :create, :show]
  resources :users, only: [:show, :new, :create, :destroy, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
