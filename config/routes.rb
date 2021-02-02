Rails.application.routes.draw do
  root to: 'products#index'
  get 'upload', to: 'products#upload'
  resources :products
end
