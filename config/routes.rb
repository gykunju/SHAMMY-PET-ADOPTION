
Rails.application.routes.draw do


  # Defines the root path route ("/")
  # root "articles#index"

  resources :adoptions

  get 'users', to: 'users#index'
  # devise_for :users, controllers: { registrations: 'registrations' }
 
  post 'signup', to: 'users#create'
  post 'login', to: 'users#show'

  # Define separate routes for admin actions (create, update, destroy)
  namespace :admin do
    resources :pets, only: [:create, :update, :destroy]
  end

  resources :pets, only: [:index, :show, :create, :update]

end

