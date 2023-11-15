Rails.application.routes.draw do
  # routes for products
  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  post "/products" => "products#create"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"
  # routes for suppliers
  get "/suppliers" => "suppliers#index"
  get "/suppliers/:id" => "suppliers#show"
  post "/suppliers" => "suppliers#create"
  patch "/suppliers/:id" => "suppliers#update"
  # routes for images
  get "/images" => "images#index"
  get "/images/:id" => "images#show"
  post "/images" => "images#create"
  patch "images/:id" => "images#update"
  delete "images/:id" => "images#destroy"
  # routes for users
  post "/users" => "users#create"
  # routes for sessions
  post "/sessions" => "sessions#create"
  # routes for orders
  get "/orders" => "orders#index"
  get "/orders/:id" => "orders#show"
  post "/orders" => "orders#create"
end
