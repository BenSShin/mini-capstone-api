require "http"
require "tty-table"

response = HTTP.get("http://localhost:3000/products_path.json")
data = response.parse

header = ["Name", "Price"]
rows = [[data[0]["name"], data[0]["price"]], [data[1]["name"], data[1]["price"]], [data[2]["name"], data[2]["price"]]]

table = TTY::Table.new(["Name", "Price"], [[data[0]["name"], data[0]["price"]], [data[1]["name"], data[1]["price"]], [data[2]["name"], data[2]["price"]]])

table.render do |renderer|
  renderer.border.separator = :each_row
end
puts table.render(:ascii)
