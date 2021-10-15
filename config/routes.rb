Rails.application.routes.draw do
  root 'users#index'
  devise_for :users
  resources :users, only: %i[index show]
  resources :posts, only: %i[index show new create destroy]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
