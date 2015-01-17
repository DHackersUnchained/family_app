Rails.application.routes.draw do
  resources :contacts

  devise_for :users
  root 'sessions#index'

  resources :users do
    member do
      get :follow
      get :unfollow
    end
  end
end
