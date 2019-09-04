Rails.application.routes.draw do
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'items#index'
  resources :items, only: [:index, :show]
  namespace :admin do
    resources :items, only: [:new, :create, :show, :edit]
  end
end
