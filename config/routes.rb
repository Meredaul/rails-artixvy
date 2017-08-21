Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  #'/sign_up', to: 'user#new'

  #'/'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
