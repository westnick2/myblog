Rails.application.routes.draw do
  get 'sessions/new'
  get 'user/name'
  get 'user/email'
  get 'user/password_digest'
  root 'posts#index'
  resources :posts
end
