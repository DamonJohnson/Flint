Rails.application.routes.draw do
  get 'bookings/index'
  get 'bookings/new'
  get 'bookings/create'
  get 'bookings/destroy'
  devise_for :users
  
  get 'profiles/new', to: 'profiles#new', as: 'profiles'
  get 'profiles/:id', to: 'profiles#show', as: 'profile'
  get 'profiles/:id/edit', to: 'profiles#edit', as: 'edit_profile'
  patch 'profiles/:id', to: 'profiles#update'
  post 'profiles/new', to: 'profiles#create'
  delete 'profiles/:id', to: 'profiles#destroy'



  get 'items', to: 'items#index', as: 'items'
  get 'items/new', to: 'items#new', as: 'new'
  get 'items/:id', to: 'items#show', as: 'item'
  post 'items/new', to: 'items#create'
  get 'items/:id/edit', to: 'items#edit', as: 'edit_item'
  patch 'items/:id', to: 'items#update'
  delete 'items/:id', to: 'items#destroy'
  
  # devise_for :users
  get 'pages/index'  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#index"
end
 