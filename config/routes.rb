Rails.application.routes.draw do
  root 'messages#not_yet_user'
  resources :messages
  resources :trips
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
