Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/emp-dashboard', as: 'rails_admin'
  resources :quotes
  get '/gform', to: 'pages#gform'
  get '/residential', to: 'pages#residential'
  get '/commercial', to: 'pages#commercial'
  get '/index', to: 'pages#index'
  get '/re-admin-login', to: 'pages#re-admin-login'
  get '/rails_admin', to: 'pages#rails_admin'
  get '/users/sign_in', to: 'pages#emp-dashboard'
  get '/users/sign_out', to: 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
end
