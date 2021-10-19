Rails.application.routes.draw do
  get 'friendships/create'
  root 'users#index'
  devise_for :users
  resources :users, only: %i[index show] do
    resources :friendships, only: %i[create] do
      collection do
        get 'accept_friend'
        get 'decline_friend'
      end
    end
  end
  resources :posts, only: %i[index show new create destroy] do
    resources :likes, only: %i[create]
  end
  
  resources :comments, only: %i[new create destroy] do
    resources :likes, only: %i[create]
  end
end
