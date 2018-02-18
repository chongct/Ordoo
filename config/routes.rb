Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end

  post "/graphql", to: "graphql#execute"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :delivery_orders, path: 'orders', param: :order_id, only: [:index, :show]

  post '/feedback/:feedback_id', as: 'feedback', to: 'feedback#rating'

end
