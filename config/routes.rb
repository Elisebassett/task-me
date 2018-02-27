Rails.application.routes.draw do

  get 'user/show'

  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }

  resources :users, only: [:show]
  resources :subtasks
  resources :categories
  resources :projects

	resources :tasks
  patch '/task-complete/:id', to: 'tasks#toggle', as: 'task_complete'
  # custom route for toggling task

  root to: "home#index"


end
