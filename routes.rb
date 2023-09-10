
Rails.application.routes.draw do
  get 'users', to: 'users#index'
  # devise_for :users, controllers: { registrations: 'registrations' }
  resources :pets, only: [:index, :show, :destroy]
  post 'signup', to: 'users#create'
  post 'login', to: 'users#show'
  # delete ''

  # Define separate routes for admin actions (create, update, destroy)
  # resources :pets, only: [:create, :update, :destroy]
  # namespace :admin do
  # end
end


