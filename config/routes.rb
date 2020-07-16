Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :gardens do 
    resources :booking, only: [ :show, :new, :create, :edit, :update, :destroy ]
  end
  devise_for :users
  root to: 'pages#home'
  resources :gardens do
    resources :reviews
  end
end
