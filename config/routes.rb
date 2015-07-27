Rails.application.routes.draw do
   
   root 'users#index'

   delete '/logout', to: 'sessions#destroy'

   get '/login', to: 'sessions#new'

   resources :sessions, only: [:new, :create, :destroy]

   resources :users 

   resources :photos

 end

