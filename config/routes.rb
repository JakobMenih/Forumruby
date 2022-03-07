Rails.application.routes.draw do

  resources :posts do
    resources :comments
  end

  root to: 'posts#index'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

end
