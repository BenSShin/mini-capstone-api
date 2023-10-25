Rails.application.routes.draw do
  get "/products" => "products#all_products"
  get "/products/:id" => "products#one_product"
end
