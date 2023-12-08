# config/initializers/cors.rb

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "*", "localhost:5173", "https://mini-capstone-frontend-98wb.onrender.com"
    resource "*", headers: :any, methods: [:get, :post, :patch, :put, :delete]
    origins "mini-capstone.peterxjang.com", "localhost:5173"
  end
end
