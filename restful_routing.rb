# This file probably doesn't belong in the repo: it needs to be deleted
# and added to .gitignore. Routes are auto-generated off of your config/routes.rb file.
#
# Same with task_me_db.pdf - PDF files are sort of binary and it is in general
# not a good idea to keep binary files in a Git repo.
#
# Same with wireframes: binary files.
                  Prefix Verb   URI Pattern                    Controller#Action
               user_show GET    /user/show(.:format)           user#show
        new_user_session GET    /users/sign_in(.:format)       users/sessions#new
            user_session POST   /users/sign_in(.:format)       users/sessions#create
    destroy_user_session DELETE /users/sign_out(.:format)      users/sessions#destroy
       new_user_password GET    /users/password/new(.:format)  devise/passwords#new
      edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
           user_password PATCH  /users/password(.:format)      devise/passwords#update
                         PUT    /users/password(.:format)      devise/passwords#update
                         POST   /users/password(.:format)      devise/passwords#create
cancel_user_registration GET    /users/cancel(.:format)        users/registrations#cancel
   new_user_registration GET    /users/sign_up(.:format)       users/registrations#new
  edit_user_registration GET    /users/edit(.:format)          users/registrations#edit
       user_registration PATCH  /users(.:format)               users/registrations#update
                         PUT    /users(.:format)               users/registrations#update
                         DELETE /users(.:format)               users/registrations#destroy
                         POST   /users(.:format)               users/registrations#create
                    user GET    /users/:id(.:format)           users#show
                subtasks GET    /subtasks(.:format)            subtasks#index
                         POST   /subtasks(.:format)            subtasks#create
             new_subtask GET    /subtasks/new(.:format)        subtasks#new
            edit_subtask GET    /subtasks/:id/edit(.:format)   subtasks#edit
                 subtask GET    /subtasks/:id(.:format)        subtasks#show
                         PATCH  /subtasks/:id(.:format)        subtasks#update
                         PUT    /subtasks/:id(.:format)        subtasks#update
                         DELETE /subtasks/:id(.:format)        subtasks#destroy
              categories GET    /categories(.:format)          categories#index
                         POST   /categories(.:format)          categories#create
            new_category GET    /categories/new(.:format)      categories#new
           edit_category GET    /categories/:id/edit(.:format) categories#edit
                category GET    /categories/:id(.:format)      categories#show
                         PATCH  /categories/:id(.:format)      categories#update
                         PUT    /categories/:id(.:format)      categories#update
                         DELETE /categories/:id(.:format)      categories#destroy
                projects GET    /projects(.:format)            projects#index
                         POST   /projects(.:format)            projects#create
             new_project GET    /projects/new(.:format)        projects#new
            edit_project GET    /projects/:id/edit(.:format)   projects#edit
                 project GET    /projects/:id(.:format)        projects#show
                         PATCH  /projects/:id(.:format)        projects#update
                         PUT    /projects/:id(.:format)        projects#update
                         DELETE /projects/:id(.:format)        projects#destroy
                   tasks GET    /tasks(.:format)               tasks#index
                         POST   /tasks(.:format)               tasks#create
                new_task GET    /tasks/new(.:format)           tasks#new
               edit_task GET    /tasks/:id/edit(.:format)      tasks#edit
                    task GET    /tasks/:id(.:format)           tasks#show
                         PATCH  /tasks/:id(.:format)           tasks#update
                         PUT    /tasks/:id(.:format)           tasks#update
                         DELETE /tasks/:id(.:format)           tasks#destroy
           task_complete PATCH  /task-complete/:id(.:format)   tasks#toggle
                    root GET    /                              home#index
