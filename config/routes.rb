Rails.application.routes.draw do
  get "/products_path", controller: "products", action: "all_products"
end
