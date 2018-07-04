Rails.application.routes.draw do
  get 'welcome/index'

  devise_for :admins, :controllers => { registrations: 'registrations' }
  devise_for :users
  resources :articles
  resources :cars

  root 'welcome#index'
end
