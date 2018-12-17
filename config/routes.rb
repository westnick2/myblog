Rails.application.routes.draw do
  get 'sessions/new'
  root 'posts#index'
  resources :posts
  resources :users
  get 'users/new' => 'users#new'

end
