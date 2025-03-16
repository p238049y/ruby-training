Rails.application.routes.draw do
  resources :boards
  resources :comments, only: %i[create destroy]
  resources :users, only: %i[new create]
end
