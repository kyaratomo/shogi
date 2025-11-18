Rails.application.routes.draw do
  resources :shindans
  resources :tops, only: %i[index]
  resources :quizzes
  get '/quiz/:pattern/:id', to: 'quizzes#show', as: :pattern_quiz
  post '/quiz/:pattern', to: 'quizzes#create', as: :pattern_quiz_create
  get '/result' => 'quizzes#result'
  get "tops/home", to: "tops#home"
  get "tops/index", to: "tops#index"
  get "shindans/index", to: "shindans#index"
  get "shindans/show", to: "shindans#show"
  get "shindans/new", to: "shindans#new"
  root 'tops#home'
end