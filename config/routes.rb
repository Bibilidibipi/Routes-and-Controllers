Rails.application.routes.draw do
  resources :users, only: [:index, :show, :destroy, :update, :create] do
    resources :contacts, only: :index
    resources :comments, only: [:create, :destroy]
  end
  resources :contacts, only: [:show, :destroy, :update, :create]
  resources :contact_shares, only: [:create, :destroy]
end
