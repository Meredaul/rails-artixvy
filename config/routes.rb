Rails.application.routes.draw do

  devise_for :users

  root to: 'pages#home'

  resources: :artwork, only: [:index, :new, :create, :destroy]

  resources: :artwork, only: [:show] do
    resources: :purchases, only: [:create]
  end

  resources: :purchases, only: [:destroy]

end
