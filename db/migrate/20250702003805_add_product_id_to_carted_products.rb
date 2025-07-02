class AddProductIdToCartedProducts < ActiveRecord::Migration[7.2]
  def change
    add_column :carted_products, :product_id, :integer
  end
end
