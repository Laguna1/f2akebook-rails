Rails.application.routes.draw do
  root 'users#index'
  devise_for :users
  resources :users, only: %i[index show]
  resources :posts, only: %i[index show new create destroy] do
    resources :likes, only: %i[create]
  end
  
  resources :comments, only: %i[new create destroy] do
    resources :likes, only: %i[create]
  end
end
