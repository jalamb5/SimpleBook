Rails.application.routes.draw do
  get 'static_pages/profile'
  resources :posts
  resources :likes
  devise_for :users # , controllers: { registrations: 'users/registrations' }

  devise_scope :user do
    get '/users' => 'users#index'
  end

  root 'posts#index'
end
