Rails.application.routes.draw do
  resources :choices
  resources :questions
  resources :subgenres
  resources :genres
  get 'welcome/index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: "welcome#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
