Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#index'
  resources :homes, only:[:index]
    resources :boards, only:[:index,:new, :create, :show, :edit, :update, :destroy] do
      resources :chats, only:[:index, :create]
    end
  resources :users, only: [:edit, :update]
end
