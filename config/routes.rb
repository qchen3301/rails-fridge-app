Rails.application.routes.draw do
  get 'drink/index'
  get 'drink/new'
  get 'drink/show'
  get 'drink/edit'
  get 'food/index'
  get 'food/new'
  get 'food/show'
  get 'food/edit'
  # get 'fridges/:resources'
  resources :fridges do
    resources :foods
    resources :drinks
  end
end
