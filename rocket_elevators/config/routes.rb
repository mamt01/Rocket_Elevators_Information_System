Rails.application.routes.draw do
  get 'employees/new'
  mount RailsAdmin::Engine => '/emp-dashboard', as: 'rails_admin'
  get '/gform', to: 'pages#gform'
  get '/residential', to: 'pages#residential'
  get '/commercial', to: 'pages#commercial'
  get '/index', to: 'pages#index'
  get '/re-admin-login', to: 'pages#re-admin-login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index' #no to: before
end
