Rails.application.routes.draw do
  resources :choices
  resources :questions
  resources :subgenres
  resources :genres
  devise_for :users
  root to: "welcome#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
