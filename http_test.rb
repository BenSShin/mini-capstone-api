require "http"

def show_test
  response = HTTP.get("http://localhost:3000/products.json")
  show = response.parse
  products = Product.all
  if show.length == products.length
    pp "Pass!"
  else
    pp "Fail!"
  end
end

def index_test
  response = HTTP.get("http://localhost:3000/products/1.json")
  index = response.parse
  product = Product.first
  product_keys = []
  product.map { |k, v| product_keys << k }
  pp product_keys
end

# code does not work since can't pull data from Product class since its in a file which i dont knwo
