Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'

  resources :products
  resources :product_bundles
  resources :product_categories

end
