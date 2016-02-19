Rails.application.routes.draw do
  get 'pages/home'

  devise_for :users
  resources :lists do
    resources :items, only: [:create, :destroy]
  end
  root 'pages#home'
end