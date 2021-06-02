Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :books, only: [:index, :show, :create, :edit, :update, :destroy]
  resources :users, only: [:show,:index,:edit,:update]
  get '/home/about', to: 'homes#about'

end