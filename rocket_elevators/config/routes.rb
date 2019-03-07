Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/emp-dashbord', as: 'rails_admin'
  resources :quotes
  get '/gform', to: 'pages#gform'
  get '/residential', to: 'pages#residential'
  get '/commercial', to: 'pages#commercial'
  get '/index', to: 'pages#index'
  get '/re-admin-login', to: 'pages#re-admin-login'
  get '/work1', to: 'pages#work1'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
end
