Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  get 'sessions/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root   'users#new'
  get    '/chef_home', to: 'static_pages#chef_home'
  get    '/user_home', to: 'static_pages#user_home'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users do
    resource :chefs
  end
  resources :chefs, only: :index, shallow: true do
    resources :meals
  end
end
