Rails.application.routes.draw do
  root 'application#index'
  get 'sessions/destroy'
  resources :users
  resources :movies
end
