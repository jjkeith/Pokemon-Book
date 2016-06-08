Rails.application.routes.draw do

  root 'pages#index'

  resources :users
  patch 'users/:id/edit' => 'users#update'
  delete 'users/:id' =>   'users#destroy', as: :destroy_user 
  resources :cards
  resources :pages


  delete '/logout' => 'sessions#destroy', as: :logout
  resources :sessions, only: [:new, :create]

end
