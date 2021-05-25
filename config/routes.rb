Rails.application.routes.draw do
  devise_for :users
  root to:"products#index"
  resources :products, only:[:new, :create, :show, :edit, :update, :destroy]do
end
  resources :users, only: :show
end
