Rails.application.routes.draw do
  
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

  # Bookings where user is lendee
  get 'lendee/:id/bookings', to: 'bookings#index', as: 'lendee_bookings'
  get 'items/:id/bookings/new', to: 'bookings#new', as: 'new_booking'
  post 'items/:id/bookings', to: 'bookings#create'
  get 'bookings/:id/show', to: 'bookings#show', as: 'booking'
  get 'bookings/:id/edit', to: 'bookings#edit'
  patch 'bookings/:id/', to: 'bookings#update'
  delete 'items/:id', to: 'bookings#destroy'

  # Bookings where user is item owner
  get 'items/:id/bookings', to: 'bookings#item_bookings', as: 'item_bookings'

  get 'lendees/create', to: 'lendees#create'

  get 'pages/index'  

  root "pages#index"
end
 