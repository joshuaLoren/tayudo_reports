
Rails.application.routes.draw do
 
  get 'home/index'

#   get 'welcome/index'
  
#   resources :articles
    
#   root 'welcome#index'
#   
    resources :users
    resources :reports
    resources :precios
    resources :general
    
    get 'home/index'
    root 'home#index'
    
    #direct to reports homepage
    #get 'reports/index'
    #root 'reports#index'
end