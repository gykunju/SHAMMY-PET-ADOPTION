
Rails.application.routes.draw do

  resources :adoptions

  resources :pets do
    member do
      patch 'adopt'
    end
  end

  get 'users', to: 'users#index'
  # devise_for :users, controllers: { registrations: 'registrations' }
 
  post 'signup', to: 'users#create'
  post 'login', to: 'users#show'
  delete 'logout', to: 'users#destroy'

  resources :users

  resources :pets, only: [:index, :show, :create, :destroy]

end

