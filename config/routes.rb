Rails.application.routes.draw do
  resources :users

  resources :users do
    resources :votings do
      resources :agrees
      resources :not_agrees
    end
  end

  root to: 'sessions#new'
  
  resources :sessions, only: [:new, :create, :destroy]
  
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
