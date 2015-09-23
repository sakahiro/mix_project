Rails.application.routes.draw do
  devise_for :users
  resources :user_profiles
  resources :engineers
  resources :projects
  resources :comments
  root to: "projects#index"
end
