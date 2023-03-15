Rails.application.routes.draw do
  get 'static_pages/profile'
  resources :posts
  resources :likes, only: %i[create destroy]
  resources :relationships, only: %i[create destroy]

  devise_for :users

  devise_scope :user do
    get '/users' => 'users#index'
    resources :users, only: [:show]
  end

  root 'posts#index'
end
