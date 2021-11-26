Rails.application.routes.draw do
  root 'static#home'
  get 'sessions/new'
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

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
