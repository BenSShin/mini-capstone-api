require "http"

response = HTTP.get("http://localhost:3000/second_product.json")
data = response.parse

p "Here is the second product."
p data
