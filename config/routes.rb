Rails.application.routes.draw do
  devise_for :users
  resources :wobs
  root to: 'wobs#index'
end
