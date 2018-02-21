Rails.application.routes.draw do

  get 'user/show'

  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }

  resources :users, only: [:show]
	resources :tasks
	resources :subtasks
	resources :categories
	resources :projects
	

  root to: "home#index"

end
