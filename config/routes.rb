Rails.application.routes.draw do
  get 'users/show'

  root 'home#index'

  resources :users do
    resources :posts do
      resources :comments
    end
  end
end
