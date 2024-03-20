Rails.application.routes.draw do
  get 'users/show'

  root 'home#index'
  resources :users do
    resources :posts, only: [:index]
  end
end
