Rails.application.routes.draw do
  devise_for :users
  resources :user_profiles
  resources :engineers
  resources :projects
  resources :comments
  resources :roles
  get "fail/:id", to: "shares#fail"
  root to: "projects#index"
end
