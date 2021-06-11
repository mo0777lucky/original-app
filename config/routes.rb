Rails.application.routes.draw do
  devise_for :users
  root to:"products#index"

  resources :products, only:[:new, :create, :show, :edit, :update, :destroy] do
    resources :favorites, only: [:create, :destroy]
    
    collection do
      get 'search'
    end
    
    resources :comments, only: [:create]
  end
  resources :users, only: [:show, :edit, :update]
end
