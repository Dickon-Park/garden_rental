Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: 'pages#home'
  resources :gardens do
    resources :bookings, only: [:new, :create, :show, :destroy]
  end
  # list of bookings belonging to the user
  resources :bookings, only: [:index]
end
