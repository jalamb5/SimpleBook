Rails.application.routes.draw do
  get 'likes/create'
  resources :posts
  resources :likes
  devise_for :users, controllers: { registrations: 'users/registrations' }

  resources :users, only: [:show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'posts#index'
end
