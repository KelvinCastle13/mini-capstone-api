class ProductsController < ApplicationController
  def index
    @products = Product.all

      render :index
    # render json: @products
  end

  def show
    @product = Product.find(params["id"])

    render :show
  end

 def create
   @product = Product.create(
  name: params["name"],
  price: params["price"],
  image_url: params["image_url"],
  description: params["description"]
    )
    if @product.valid?
      render :show
    else
      render json: { errors: @product.errors.full_messages }
    end
  end

  def update
 @product = Product.find(params["id"])

 @product.update(
  name: params["name"] ||product.name,
  price: params["price"] ||product.price,
  image_url: params["image_url"] ||product.image_url,
  description: params["description"] || product.description
 )

    if @product.valid?
  render :show
    else
      render json: { errors: @product.errors.full_messages }
    end
  end

  def destroy
   @product = Product.find(params["id"])

   @product.destroy
  end

  def supplier_id
  end
end
