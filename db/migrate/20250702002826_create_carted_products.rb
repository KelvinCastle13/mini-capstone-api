class CreateCartedProducts < ActiveRecord::Migration[7.2]
  def change
    create_table :carted_products do |t|
      t.integer :user_id
      t.integer :quantity
      t.string :status
      t.integer :order_id

      t.timestamps
    end
  end
end
