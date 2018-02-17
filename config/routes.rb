Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :delivery_orders, path: 'orders', param: :order_id, only: [:index, :show]
end
