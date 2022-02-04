Rails.application.routes.draw do
  root 'home#index'
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'
  get '/auth/:provider/callback', to: 'sessions#omniauth'
  post 'auth/:provider/callback', to: 'sessions#omniauth'

  resources :users
  resources :receipts
  resources :items
  resources :categories
  resources :stores
  resources :notes


  resources :categories do
    resources :items, module: :categories
  end

  resources :categories do
    resources :receipts, module: :categories
  end

  resources :receipts do
    resources :notes, module: :receipts
  end

  resources :items do
    resources :notes, module: :items
  end

  resources :items do
    resources :categories, module: :items
  end

  resources :receipts do
    resources :categories, module: :receipts
  end

  resources :receipts do
    resources :items, module: :receipts
  end
end
