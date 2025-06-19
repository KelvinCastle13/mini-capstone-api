class AddTaxToOrders < ActiveRecord::Migration[7.2]
  def change
    add_column :orders, :tax, :integer
  end
end
