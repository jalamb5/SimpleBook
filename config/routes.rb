Rails.application.routes.draw do
  resources :posts
  resources :likes
  devise_for :users # , controllers: { registrations: 'users/registrations' }

  resources :users, only: [:show]

  root 'posts#index'
end
