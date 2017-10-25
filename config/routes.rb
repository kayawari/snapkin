Rails.application.routes.draw do
  root to: 'sessions#new'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'

  resources :users
  resources :diaries
end
