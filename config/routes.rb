Rails.application.routes.draw do

  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }

	resources :tasks
	resources :subtasks
	resources :categories
	resources :projects
	

  root to: "home#index"

end
