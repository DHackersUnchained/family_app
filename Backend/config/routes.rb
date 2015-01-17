Rails.application.routes.draw do
  resources :contacts

  devise_for :users
  root 'sessions#index'
end
