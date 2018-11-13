
Rails.application.routes.draw do
    #'home/index'
    root 'home#index'\
    
    resources :users
    resources :sessions, only: [:new, :create, :destroy]
    resources :reports
    resources :precios
    resources :general
    
    get 'signup', to: 'users#new', as: 'signup'
    get 'login', to: 'sessions#new', as: 'login'
    get 'logout', to: 'sessions#destroy', as: 'logout'
    
    #direct to reports homepage
    #get 'reports/index'
    #root 'reports#index'
end