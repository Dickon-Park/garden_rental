Rails.application.routes.draw do
  get 'index/show'
  get 'index/new'
  get 'index/edit'
  get 'index/delete'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
