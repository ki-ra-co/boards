Rails.application.routes.draw do
  devise_for :users
  root to: 'boards#index'
  resources :users, only: [:edit, :update]
  resources :boards, only:[:index,:new, :create, :show, :edit, :update, :destroy] do
    resources :chats, only:[:index, :create]
  end
end
