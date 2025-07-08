Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "localhost:5173", "https://mini-capstone-api-v7ht.onrender.com", "mini-capston-frontend.netlify.app"
    resource "*",
             headers: :any,
             methods: %i[get post put patch delete options head],
             credentials: true
  end
end
