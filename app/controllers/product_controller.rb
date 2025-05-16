class ProductController < ApplicationController
  def product_all
    product = Product.all

    render json: product
  end

  def product_book
    product = Product.find(1)

    render json: product
  end

  def product_hair_dryer
    product = Product.find(2)

    render json: product
  end
end
