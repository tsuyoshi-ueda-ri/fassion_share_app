Rails.application.routes.draw do
  resources :items, only: [:index, :new]
end
