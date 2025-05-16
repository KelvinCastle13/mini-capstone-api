Rails.application.routes.draw do
  get "/all_product" => "product#product_all"
  get "/book" => "product#product_book"
  get "/hair_dryer" => "product#product_hair_dryer"
end
