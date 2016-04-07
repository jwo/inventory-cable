Rails.application.routes.draw do

  root 'products#index'
  get 'products' => 'products#index', as: :products
  get 'products/:id' => 'products#show', as: :product

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'
end
