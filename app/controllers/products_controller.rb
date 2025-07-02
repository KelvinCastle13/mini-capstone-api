class ProductsController < ApplicationController
  # before_action :authenticate_admin, except: [ :index, :show ]
  def index
    # puts "--------------"
    # pp current_user
    # puts "--------------"
    @products = Product.all

    render json: @products.as_json(include: :categories)
  end

  def show
    @product = Product.find(params["id"])

    render json: @product.as_json(include: :category)
  end

 def create
   @product = Product.create(
  name: params["name"],
  price: params["price"],
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
