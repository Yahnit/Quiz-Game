Rails.application.routes.draw do

  root to: "welcome#index"

  get 'genres/:genre_id/subgenres/new', to: 'subgenres#new_subgenre', as: 'new_subgenre_link'
  get 'genres/:genre_id/subgenres', to: 'subgenres#index', as: 'subgenres_link'
  post 'genres/:genre_id/subgenres', to: 'subgenres#create', as: 'subgenres_link_create'

  get 'subgenres', to: 'subgenres#all', as: 'all_subgenres'
  get 'subgenres/:subgenre_id/questions/new', to: 'questions#new_question', as: 'new_question_link'
  get 'subgenres/:subgenre_id/questions', to: 'questions#index', as: 'questions_link'
  post 'subgenres/:subgenre_id/question', to: 'questions#create', as: 'questions_link_create'
  post 'subgenres/:subgenre_id/questions', to: 'questions#check', as: 'check_right_answer'
  get 'subgenres/:subgenre_id/leaderboards', to: 'leaderboards#index', as: 'leaderboards'


  get 'questions', to: 'questions#all', as: 'all_questions'
  get 'questions/:question_id/choices/new', to: 'choices#new_choice', as: 'new_choice_link'
  get 'questions/:question_id/choices', to: 'choices#index', as: 'choices_link'
  post 'questions/:question_id/choices', to: 'choices#create', as: 'choices_link_create'
  post 'subgenres/:subgenre_id/check_answer', to: 'questions#check', as: 'check_answer'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'choices', to: 'choices#all', as: 'all_choices'


  resources :subgenres
  resources :statuses
  resources :leaderboards
  resources :choices
  resources :questions
  resources :genres
  devise_for :users
end
