Rails.application.routes.draw do
      namespace :admin do
          get 'statistics', to: 'stats#index'
      end
      resources :authors do
          resources :books
      end 
      
      namespace :admin do
          resources :stats
      end 
end
