Rails.application.routes.draw do
  get 'posts/index'
  get 'posts/show'
  get 'posts/new'
  get 'posts/create'
  devise_for :users

  root 'users#index'
  get 'users/show'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
