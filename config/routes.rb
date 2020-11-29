Rails.application.routes.draw do
  root to: 'tweets#index'
  resources :items, only: [:index, :new, :create, :destroy]
end
