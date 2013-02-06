Demo::Application.routes.draw do
  root to: 'Static_pages#home'

match 'andrew', to: 'Static_pages#andrew'
match 'profile', to: 'Static_pages#profile'
match 'home', to: 'Static_pages#home'
  

  

  get "static_pages/home"

  get "static_pages/profile"

  get "static_pages/andrew"

  match 'signup', to: 'Users#new'
  match 'logout', to: 'sessions#destroy'
  match 'login', to: 'sessions#new'
resources :users
  resources :sessions
  resources :password_resets
end
