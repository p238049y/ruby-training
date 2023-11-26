Rails.application.routes.draw do
  # root "boards#index"
  # get 'boards', to: 'boards#index'
  # get 'boards/new', to: 'boards#new'
  # post 'boards', to: 'boards#create'
  # get 'boards/:id', to: 'boards#show'
  resources :boards, only: [:index, :new, :create, :show, :edit, :update]
end
