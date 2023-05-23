Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # see all tasks
  get "tasks", to: "tasks#index"

  # create new task
  get "tasks/new", to: "tasks#new", as: :new_task
  post "tasks", to: "tasks#create"

  # singe task page
  get "tasks/:id", to: "tasks#show", as: :task

  # update a task
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"

  # delete a task
  delete "tasks/:id", to: "tasks#destroy"
end
