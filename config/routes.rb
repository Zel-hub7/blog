Rails.application.routes.draw do
  devise_for :users
  get 'users/show'

  authenticated :user do
    root 'home#index', as: :authenticated_root
  end

  root to: redirect('/users/sign_up')

  resources :users do
    resources :posts do
      resources :comments
    end
  end
end
