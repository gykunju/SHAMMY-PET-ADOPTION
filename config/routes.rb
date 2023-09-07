
Rails.application.routes.draw do

  get 'users', to: 'users#index'
  # devise_for :users, controllers: { registrations: 'registrations' }
 
  post 'signup', to: 'users#create'
  post 'login', to: 'users#show'

  # Define separate routes for admin actions (create, update, destroy)
  namespace :admin do
    resources :pets, only: [:create, :update, :destroy]
  end
end



  resources :pets, only: [:index, :show, :create]
end

