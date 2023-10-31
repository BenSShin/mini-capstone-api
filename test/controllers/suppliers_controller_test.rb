require "test_helper"

class SuppliersControllerTest < ActionDispatch::IntegrationTest
  # test "index" do
  #   get "/suppliers.json"
  #   assert_response 200

  #   data = JSON.parse(response.body)
  #   assert_equal Supplier.count, data.length
  # end

  # test "create" do
  #   assert_difference "Supplier.count", 1 do
  #     post "/suppliers.json", params: { name: "Mike Quick", email: "email@email.com", phone_number: "(123)123-1234" }
  #     assert_response 200
  #   end
  # end

  # test "show" do
  #   get "/suppliers/#{Supplier.first.id}.json"
  #   assert_response 200

  #   data = JSON.parse(response.body)
  #   assert_equal ["id", "name", "email", "phone_number", "supplier_id", "created_at", "updated_at"], data.keys
  # end

  # test "update" do
  #   supplier = Supplier.first
  #   patch "/suppliers/#{supplier.id}.json", params: { name: "Updated name" }
  #   assert_response 200

  #   data = JSON.parse(response.body)
  #   assert_equal "Updated name", data["name"]
  # end
end
