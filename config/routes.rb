Rails.application.routes.draw do
  devise_for :users

  resources :group_chats, only: [:new, :create, :show, :index]
  root 'group_chats#index'

  mount ActionCable.server => '/cable'
end
