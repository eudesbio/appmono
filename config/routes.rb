Rails.application.routes.draw do
  resources :andamentos
  resources :produtos
  #devise_for :users
  get 'home/index'

  root to: "home#index"
  devise_for :users, :controllers => { registrations: 'registrations' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
