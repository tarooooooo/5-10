Rails.application.routes.draw do
 
  devise_for :users
  root to: 'homes#top'
  resources :books, only:[:new,:create,:index,:show,:edit,:update,:destroy]
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :users, only: [:show,:index,:edit,:update,:create]
end
