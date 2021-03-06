Rails.application.routes.draw do
   
  root 'users#new'

   delete '/logout', to: 'sessions#destroy'

   get '/login', to: 'sessions#new'

   # get 'photos/:id/like'

   resources :sessions, only: [:new, :create, :destroy]

   resources :users 

  #nested routes for photos/:id/comments
  resources :photos do
    resources :comments
  end
end

