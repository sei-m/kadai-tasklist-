Rails.application.routes.draw do
  
  root to: 'tasks#index'
  
  patch 'tasks/:id', to: 'tasks#update'
  put 'tasks/:id', to: 'tasks#update'
  get 'tasks/:id/edit', to: 'tasks#edit'

  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  resources :tasks, only: [:index, :show, :new, :edit, :create, :destroy]
  resources :users, only: [:show, :new, :create]
end
