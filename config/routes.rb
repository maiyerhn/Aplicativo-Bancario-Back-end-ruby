Rails.application.routes.draw do
  resources :users

  post 'login', to: 'sessions#create'
end
