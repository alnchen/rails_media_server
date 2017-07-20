Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  resource :sessions, only: [:new, :create, :destroy]
  resources :subs do 
    resources :comments
  end
  root to: redirect("/subs")
end
