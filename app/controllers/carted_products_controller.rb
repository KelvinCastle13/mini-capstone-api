class CartedProductsController < ApplicationController
  def index
    if current_user
      pp current_user
      @carted_products = current_user.carted_products.where(status: "carted").includes(:product)
      render :index
    else
      render json: { error: "Can't find cart!" }
    end
  end

  def show
  @cart = Cart.find_by(id: params[:id])
  if @cart
    render json: @cart
  else
    render json: { error: "Can't find cart!" }, status: :not_found
  end
end

  def create
    @carted_product = CartedProduct.create(
      user_id: current_user.id,
      order_id: nil,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted"
    )

    render json: { message: "Created" }
  end

  def destroy
    @carted_product = current_user.carted_products.find(params[:id])

    @carted_product.update(
      status: "removed"
    )

    render json: { message: "item removed!" }
  end
end
