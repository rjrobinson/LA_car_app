Rails.application.routes.draw do

  root 'manufacturers#index'
  resources :manufacturers
  
  resources :cars

end
