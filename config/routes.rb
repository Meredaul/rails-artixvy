Rails.application.routes.draw do

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: 'pages#home'

  # resources :artwork, only: [:index, :new, :create, :destroy]

  # resources :artwork, only: [:show] do
  #   resources :purchases, only: [:create]
  # end

  resources :artwork, only: [:show, :index, :new, :create, :destroy] do
    resources :purchases, only: [:create]
  end

  resources :purchases, only: [:destroy]

end
