Rails.application.routes.draw do
  get 'comments/create'
  get 'users/show'

  root 'home#index'
  resources :users do
    resources :posts
  end

  resources :comments
end
