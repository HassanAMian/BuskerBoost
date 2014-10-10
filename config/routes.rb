BuskerBoost::Application.routes.draw do
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :sessions,      only: [:new, :create, :destroy]
  resources :statuses,    only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
  root to: 'static_pages#home'
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  match '/contact', to: 'static_pages#contact', via: 'get'
  match '/events',   to: 'static_pages#events',   via: 'get'
  
end
