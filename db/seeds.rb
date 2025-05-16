i = 1
10.times do
  product = Product.new(name: "item #{i}", price: "13", image_url: "img", description: "scribe")
  product.save
  i += 1
end
