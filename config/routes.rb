Rails.application.routes.draw do
  devise_for :users
  get 'users/show'

  root 'home#index'

  resources :users do
    resources :posts do
      resources :comments
    end
  end
end
