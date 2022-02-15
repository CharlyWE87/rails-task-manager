Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Create, read, update, delete
  # verb 'path', to: 'controller#action'
  # I can list all tasks (read)
  get '/tasks', to: 'tasks#index'
  # I can view the details of a task (read)
  get '/tasks/:id', to: 'tasks#show'
  # I can add a new task (create)
  get '/tasks/new', to: 'tasks#new'
  post '/tasks', to: 'tasks#create'
  # I can edit a task (mark as completed / update title & details)
  get '/restaurants/id:/edit', to: 'tasks#edit'
  patch '/tasks/:id', to: 'tasks#update'
  # I can remove a task (delete)
  delete '/tasks/:id', to: 'tasks#destroy'
end
