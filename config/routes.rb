Rails.application.routes.draw do
  get "/products_path", controller: "products", action: "all_products"

  get "/one_product", controller: "products", action: "one_product"

  get "/second_product", controller: "products", action: "second_product"
end
