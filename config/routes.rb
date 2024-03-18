Rails.application.routes.draw do
  get 'users/show'

  root 'home#index'
  resources :users
end
