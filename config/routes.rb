Rails.application.routes.draw do
  root 'static#home'
  
  get '/login' => 'sessions#login'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  get '/logout' => 'sessions#destroy'

  resources :users
  resources :receipts
  resources :items
  resources :categories
  resources :stores
  resources :notes

  resources :receipts do
    resources :notes, module: :receipts
  end

  resources :items do
    resources :notes, module: :items
  end

end
