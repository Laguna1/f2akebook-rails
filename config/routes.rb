Rails.application.routes.draw do
  get 'comments/new'
  get 'comments/create'
  root 'users#index'
  devise_for :users
  resources :users, only: %i[index show]
  resources :posts, only: %i[index show new create destroy]
  resources :comments, only: %i[new create destroy]
end
