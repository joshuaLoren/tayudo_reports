
Rails.application.routes.draw do
#   get 'welcome/index'
  
#   resources :articles
    
#   root 'welcome#index'
#   
    resources :reports
    resources :precios
    resources :general
    get 'reports/index'
    root 'reports#index'
end