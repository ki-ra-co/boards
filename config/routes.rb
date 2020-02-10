Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#index'
  resources :users, only: [:edit, :update]
  resources :homes, only:[:index]
    resources :boards, only:[:index,:new, :create, :show, :edit, :update, :destroy] do
      resources :chats, only:[:index, :create]
    end
end
