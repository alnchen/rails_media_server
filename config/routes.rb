Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  resource :sessions, only: [:new, :create, :destroy]
  resources :subs
  resources :comments
  root to: redirect("/subs")
end
