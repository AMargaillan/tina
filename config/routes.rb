Rails.application.routes.draw do
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'items#index'
  get '/about' => 'items#about'
  resources :items, only: [:index, :show, :update, :edit, :create, :new, :destroy]
  resources :photos, only: [:new, :create, :show]


  namespace :admin do
    resources :items, only: [:new, :create, :show, :edit, :destroy, :update]
    resources :photos, only: [:new, :create, :show]
    
  end
end
