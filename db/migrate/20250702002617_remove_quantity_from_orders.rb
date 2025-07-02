class RemoveQuantityFromOrders < ActiveRecord::Migration[7.2]
  def change
    remove_column :orders, :quantity, :integer
  end
end
