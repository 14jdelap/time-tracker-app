Rails.application.routes.draw do
  post   'authenticate',         to: 'authentication#create'
  
  post   'sources',              to: 'sources#create'
  get    'sources/:source_id',   to: 'sources#show'
  get    'sources',              to: 'sources#index'
  post   'sources/:source_id',   to: 'sources#update'
  delete 'sources/:source_id',   to: 'sources#destroy'

  get    'projects',             to: 'projects#index'
  get    'projects/:project_id', to: 'projects#show'
  

  get    'tasks',                to: 'tasks#index'
  get    'tasks/:task_id',       to: 'tasks#show'

  get    'time_entries',                to: 'time_entries#index'
  get    'time_entries/:time_entry_id', to: 'time_entries#show'

  
  
  
  post 'users',                  to: 'users#create'
  get  'users/me',               to: 'users#show'


  get  'refresh',                to: 'sources#refresh'
  get  'users/index'
  
  
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end