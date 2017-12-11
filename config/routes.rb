Rails.application.routes.draw do
  resources :recipes
  resources :launches
  resources :vegetables
  resources :meats
  resources :starches
  resources :users
  root 'launches#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
