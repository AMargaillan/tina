Rails.application.routes.draw do
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'items#index'
  resources :items, only: [:index, :show, :update, :edit, :create, :new, :destroy]
#  post "/items/:id" => "items#show"
  namespace :admin do
    resources :items, only: [:new, :create, :show, :edit, :destroy, :update]
  end
end
