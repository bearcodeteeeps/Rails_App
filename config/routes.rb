Rails.application.routes.draw do
  get 'charges/new'
  get 'charges/create'
  # get 'orders/express'
  get 'orders/express' , :to =>'orders#express_checkout'
  get 'comments/new'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' } 
  # devise_for :users

  # root 'welcome#index'
  resources :posts do
    get 'likes' 
    get 'unlike' 
  end
  resources :comments do
  	get 'likes' 
    get 'unlike' 
  end
  authenticated :user do
    root 'welcome#index', as: 'authenticated_root'
  end
  devise_scope :user do
    root 'devise/sessions#new'
  end

  resources :orders
  resources :charges

  # root 'orders#index'
  # post '/auth/:provider/callback' => 'authentications#create'
  # resources :authentications, only: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
