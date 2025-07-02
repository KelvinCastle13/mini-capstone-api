Rails.application.routes.draw do
  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  post "/products" => "products#create"
  patch "/products/:id" => "products#update"
  delete "products/:id" => "products#destroy"

  get "/suppliers" => "suppliers#index"
  get "/suppliers/:id" => "suppliers#show"
  post "/suppliers" => "suppliers#create"
  patch "/suppliers/:id" => "suppliers#update"
  delete "suppliers/:id" => "suppliers#destroy"

  get "/images" => "images#index"
  get "/images/:id" => "images#show"
  post "/images" => "images#create"

  post "/signup" => "users#create"
  patch "/users/:id" => "users#update"

  post "/login" => "sessions#create"
  delete "/logout" => "sessions#destroy"

  get "/orders" => "orders#index"
  get "/orders/:id" => "orders#show"
  post "/orders" => "oders#create"

   get "/carted_products" => "carted_products#index"
  get "/carted_products/:id" => "carted_products#show"
  post "/carted_products" => "carted_products#create"
  patch "/carted_products/:id" => "carted_products#update"
  delete "carted_products/:id" => "carted_products#destroy"
end
