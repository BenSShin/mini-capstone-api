Rails.application.routes.draw do
  get "/products_path", controller: "products", action: "all_products"

  get "/one_product/:id" => "products#one_product"
end
