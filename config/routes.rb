Rails.application.routes.draw do

  get 'relationships/create'

  get 'relationships/destroy'

  get 'home/index'
  
  root 'home#index'

  resources :users do
  	resources :posts, shallow: true
    post 'search',  :on => :collection
    member do
      get :following, :followers
    end
  end

  resources :posts do
	  resources :comments, shallow: true
 	end
	
  resources :sessions, except: [:destroy]
  resources :relationships, only: [:create, :destroy]
  delete '/sessions' => 'sessions#destroy', as: :logout
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  
end
