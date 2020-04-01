Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # resources :tasks
  # digital `rails routes` per vedere tutte le routes che hai
  # se ne vuoi generate solo specifiche, usa:
  # resources :tasks, only: [:index, :show, :delete]
  get 'tasks', to: 'tasks#index'

  get 'tasks/new', to: 'tasks#new'

  get 'tasks/:id', to: 'tasks#show', as: 'task'

  patch '/tasks/:id', to: 'tasks#update'

  delete '/tasks/:id', to: 'tasks#destroy', as: 'delete'

  post '/tasks', to: 'tasks#create', as: 'create'

  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit'

end
