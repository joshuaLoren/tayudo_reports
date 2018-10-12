
Rails.application.routes.draw do
#   get 'welcome/index'
  
#   resources :articles
    
#   root 'welcome#index'
#   
    get 'precios/index'
    resources :precios
    root 'precios#index'
end