Rails.application.routes.draw do
  
  get 'comments/index'

  get 'comments/new'

  get 'comments/create'

  get 'comments/show'

  get 'comments/edit'

  get 'comments/update'

  get 'comments/destroy'

  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  
end
