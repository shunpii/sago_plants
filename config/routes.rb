Rails.application.routes.draw do
  namespace :managers do
    get 'items/new'
    get 'items/index'
    get 'items/show'
    get 'items/edit'
    post 'items/create'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :managers, controllers: {
    sessions:      'managers/sessions',
    passwords:     'managers/passwords',
    registrations: 'managers/registrations'  
  }
  
end
