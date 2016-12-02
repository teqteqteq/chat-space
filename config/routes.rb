Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'chats#index'
  resources :chats
  resources :users
  resources :groups, :only => [:create, :new ,:update, :edit, :show]

end
