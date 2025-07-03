class CartedProductsController < ApplicationController
  def index
    if current_user
      pp current_user
      carted_products = current_user.carted_products.where(status: "carted").includes(:product)
      render :carted_products
    else
      render json: { error: "Can't find cart!" }
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

    render json: { message: "item/items added" }
  end

  def destroy
    @carted_product = current_user.carted_products.find(params[:id])

    @carted_product.update(
      status: "removed"
    )

    render json: { message: "item removed!" }
  end
end
