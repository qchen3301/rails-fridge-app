Rails.application.routes.draw do
  root to: 'artists#index'
  
  resources :fridges do
    resources :foods
    resources :drinks
  end
end
