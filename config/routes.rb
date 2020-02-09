Rails.application.routes.draw do
  devise_for :users
  root to: 'boards#index'
  resources :homes, only:[:index]
  resources :boards, only:[:index,:new, :create, :show, :edit, :update, :destroy]
  resources :chats, only:[:index]
  resources :users, only: [:edit, :update]
end
