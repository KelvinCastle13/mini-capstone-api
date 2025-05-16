Rails.application.routes.draw do
  get "/products" => "product#index"
  get "/products/:id" => "product#show"
end
