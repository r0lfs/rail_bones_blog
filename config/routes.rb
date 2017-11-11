Rails.application.routes.draw do

  get 'home/index'
  
  root 'home#index'

  resources :users do
  	resources :posts, shallow: true
  end

  resources :comments

  resources :sessions, except: [:destroy]
  delete '/sessions' => 'sessions#destroy', as: :logout
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  
end
