Rails.application.routes.draw do
  resources :statuses
  resources :leaderboards
  resources :choices
  resources :questions
  resources :subgenres
  resources :genres
  devise_for :users
  root to: "welcome#index"

  get 'genres/:genre_id/subgenres/new', to: 'subgenres#new', as: 'new_subgenre_link'
  get 'genres/:genre_id/subgenres', to: 'subgenres#index', as: 'subgenres_link'
  post 'genres/:genre_id/subgenres', to: 'subgenres#create', as: 'subgenres_link_create'

  get 'subgenres/:subgenre_id/questions/new', to: 'questions#new', as: 'new_question_link'
  get 'subgenres/:subgenre_id/questions', to: 'questions#index', as: 'questions_link'
  post 'subgenres/:subgenre_id/questions', to: 'questions#create', as: 'questions_link_create'

  get 'questions/:question_id/choices/new', to: 'choices#new', as: 'new_choice_link'
  get 'questions/:question_id/choices', to: 'choices#index', as: 'choices_link'
  post 'questions/:question_id/choices', to: 'choices#create', as: 'choices_link_create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
