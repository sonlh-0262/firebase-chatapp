Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"

  get 'about', to: 'about#index'
  post 'about', to: 'about#create'
  get 'contact', to: 'contact#index'
  get 'chat', to: 'chat#index'
  post 'tokens', to: 'token#create'
end
